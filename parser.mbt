///|
priv struct Cursor {
  input : String
  mut position : Int
}

///|
fn Cursor::at_end(self : Cursor) -> Bool {
  self.position >= self.input.length()
}

///|
fn Cursor::peek(self : Cursor) -> UInt16? {
  if self.at_end() {
    None
  } else {
    Some(self.input.at(self.position))
  }
}

///|
fn Cursor::advance(self : Cursor) -> Unit {
  self.position = self.position + 1
}

///|
fn Cursor::skip_spaces(self : Cursor) -> Unit {
  while self.peek() == Some((32 : UInt16)) {
    self.advance()
  }
}

///|
fn slice_string(input : String, start : Int, end : Int) -> String {
  let builder = StringBuilder::StringBuilder(size_hint=end - start)
  builder.write_substring(input, start, end - start)
  builder.to_string()
}

///|
fn is_ascii_alpha(ch : UInt16) -> Bool {
  (ch >= (65 : UInt16) && ch <= (90 : UInt16)) ||
  (ch >= (97 : UInt16) && ch <= (122 : UInt16))
}

///|
fn is_lower_alpha(ch : UInt16) -> Bool {
  ch >= (97 : UInt16) && ch <= (122 : UInt16)
}

///|
fn is_digit(ch : UInt16) -> Bool {
  ch >= (48 : UInt16) && ch <= (57 : UInt16)
}

///|
fn is_key_start(ch : UInt16) -> Bool {
  is_lower_alpha(ch) || ch == (42 : UInt16)
}

///|
fn is_key_char(ch : UInt16) -> Bool {
  is_key_start(ch) ||
  is_digit(ch) ||
  ch == (95 : UInt16) ||
  ch == (45 : UInt16) ||
  ch == (46 : UInt16)
}

///|
fn is_token_char(ch : UInt16) -> Bool {
  is_ascii_alpha(ch) ||
  is_digit(ch) ||
  ch == (33 : UInt16) ||
  ch == (35 : UInt16) ||
  ch == (36 : UInt16) ||
  ch == (37 : UInt16) ||
  ch == (38 : UInt16) ||
  ch == (39 : UInt16) ||
  ch == (42 : UInt16) ||
  ch == (43 : UInt16) ||
  ch == (45 : UInt16) ||
  ch == (46 : UInt16) ||
  ch == (58 : UInt16) ||
  ch == (94 : UInt16) ||
  ch == (95 : UInt16) ||
  ch == (96 : UInt16) ||
  ch == (124 : UInt16) ||
  ch == (126 : UInt16) ||
  ch == (47 : UInt16)
}

///|
fn parse_boolean(cursor : Cursor) -> Result[BareItem, ParseError] {
  let start = cursor.position
  cursor.advance()
  match cursor.peek() {
    Some(ch) if ch == (49 : UInt16) => {
      cursor.advance()
      Ok(SfBoolean(true))
    }
    Some(ch) if ch == (48 : UInt16) => {
      cursor.advance()
      Ok(SfBoolean(false))
    }
    _ => Err(InvalidBoolean(start))
  }
}

///|
fn parse_integer(cursor : Cursor) -> Result[BareItem, ParseError] {
  let start = cursor.position
  let mut negative = false
  if cursor.peek() == Some((45 : UInt16)) {
    negative = true
    cursor.advance()
  }
  let digits_start = cursor.position
  let mut value = 0L
  while cursor.peek().map(is_digit).unwrap_or(false) {
    let digit = cursor.peek().unwrap().to_int64() - 48L
    value = value * 10L + digit
    cursor.advance()
  }
  let digits = cursor.position - digits_start
  let source = slice_string(cursor.input, start, cursor.position)
  if digits == 0 {
    return Err(InvalidInteger(source))
  }
  if digits > 15 || value > 999_999_999_999_999L {
    return Err(IntegerOutOfRange(source))
  }
  if negative {
    Ok(SfInteger(-value))
  } else {
    Ok(SfInteger(value))
  }
}

///|
fn parse_string_value(cursor : Cursor) -> Result[BareItem, ParseError] {
  let start = cursor.position
  cursor.advance()
  let builder = StringBuilder::StringBuilder()
  while !cursor.at_end() {
    let ch = cursor.peek().unwrap()
    if ch == (34 : UInt16) {
      cursor.advance()
      return Ok(SfString(builder.to_string()))
    }
    if ch == (92 : UInt16) {
      cursor.advance()
      match cursor.peek() {
        Some(escaped) if escaped == (34 : UInt16) || escaped == (92 : UInt16) => {
          builder.write_substring(cursor.input, cursor.position, 1)
          cursor.advance()
          continue
        }
        _ => return Err(InvalidStringEscape(cursor.position))
      }
    }
    if ch < (32 : UInt16) || ch > (126 : UInt16) {
      return Err(InvalidStringCharacter(cursor.position))
    }
    builder.write_substring(cursor.input, cursor.position, 1)
    cursor.advance()
  }
  Err(UnterminatedString(start))
}

///|
fn parse_token(cursor : Cursor) -> Result[BareItem, ParseError] {
  let start = cursor.position
  match cursor.peek() {
    Some(ch) if is_ascii_alpha(ch) || ch == (42 : UInt16) => cursor.advance()
    _ => return Err(InvalidToken(start))
  }
  while cursor.peek().map(is_token_char).unwrap_or(false) {
    cursor.advance()
  }
  Ok(SfToken(slice_string(cursor.input, start, cursor.position)))
}

///|
fn parse_bare_item(cursor : Cursor) -> Result[BareItem, ParseError] {
  match cursor.peek() {
    None => Err(EmptyInput)
    Some(ch) if ch == (63 : UInt16) => parse_boolean(cursor)
    Some(ch) if ch == (34 : UInt16) => parse_string_value(cursor)
    Some(ch) if ch == (45 : UInt16) || is_digit(ch) => parse_integer(cursor)
    Some(ch) if is_ascii_alpha(ch) || ch == (42 : UInt16) => parse_token(cursor)
    _ => Err(UnsupportedBareItem(cursor.position))
  }
}

///|
fn parse_key(cursor : Cursor) -> Result[String, ParseError] {
  let start = cursor.position
  match cursor.peek() {
    Some(ch) if is_key_start(ch) => cursor.advance()
    _ => return Err(InvalidParameterKey(start))
  }
  while cursor.peek().map(is_key_char).unwrap_or(false) {
    cursor.advance()
  }
  Ok(slice_string(cursor.input, start, cursor.position))
}

///|
fn insert_parameter(
  parameters : Array[Parameter],
  parameter : Parameter,
) -> Unit {
  let mut index = 0
  while index < parameters.length() {
    if parameters[index].key == parameter.key {
      parameters[index] = parameter
      return
    }
    index = index + 1
  }
  parameters.push(parameter)
}

///|
fn parse_parameters(cursor : Cursor) -> Result[Array[Parameter], ParseError] {
  let parameters : Array[Parameter] = []
  while cursor.peek() == Some((59 : UInt16)) {
    cursor.advance()
    cursor.skip_spaces()
    let key = match parse_key(cursor) {
      Ok(value) => value
      Err(error) => return Err(error)
    }
    let value = if cursor.peek() == Some((61 : UInt16)) {
      cursor.advance()
      match parse_bare_item(cursor) {
        Ok(value) => value
        Err(error) => return Err(error)
      }
    } else {
      SfBoolean(true)
    }
    insert_parameter(parameters, { key, value })
  }
  Ok(parameters)
}

///|
/// Parse a top-level RFC 9651 Item, including ordered parameters.
pub fn parse_item(input : String) -> Result[Item, ParseError] {
  let cursor : Cursor = { input, position: 0 }
  cursor.skip_spaces()
  if cursor.at_end() {
    return Err(EmptyInput)
  }
  let value = match parse_bare_item(cursor) {
    Ok(value) => value
    Err(error) => return Err(error)
  }
  let parameters = match parse_parameters(cursor) {
    Ok(value) => value
    Err(error) => return Err(error)
  }
  cursor.skip_spaces()
  if !cursor.at_end() {
    return Err(TrailingCharacters(cursor.position))
  }
  Ok({ value, parameters })
}
