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
fn Cursor::skip_sp(self : Cursor) -> Unit {
  while self.peek() == Some((32 : UInt16)) {
    self.advance()
  }
}

///|
fn Cursor::skip_ows(self : Cursor) -> Unit {
  while self.peek() == Some((32 : UInt16)) || self.peek() == Some((9 : UInt16)) {
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
fn is_lower_hex_digit(ch : UInt16) -> Bool {
  is_digit(ch) || (ch >= (97 : UInt16) && ch <= (102 : UInt16))
}

///|
fn lower_hex_value(ch : UInt16) -> Int {
  if is_digit(ch) {
    ch.to_int() - 48
  } else if ch >= (97 : UInt16) && ch <= (102 : UInt16) {
    ch.to_int() - 97 + 10
  } else {
    -1
  }
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
fn parse_number(cursor : Cursor) -> Result[BareItem, ParseError] {
  let start = cursor.position
  let mut negative = false
  if cursor.peek() == Some((45 : UInt16)) {
    negative = true
    cursor.advance()
  }
  let digits_start = cursor.position
  let mut int_val = 0L
  while cursor.peek().map(is_digit).unwrap_or(false) {
    let digit = cursor.peek().unwrap().to_int64() - 48L
    int_val = int_val * 10L + digit
    cursor.advance()
  }
  let int_digits = cursor.position - digits_start
  let source = slice_string(cursor.input, start, cursor.position)
  if int_digits == 0 {
    return Err(InvalidInteger(source))
  }

  // Check for decimal point
  if cursor.peek() == Some((46 : UInt16)) {
    if int_digits > 12 {
      return Err(DecimalOutOfRange(source))
    }
    cursor.advance() // consume '.'
    let frac_start = cursor.position
    let mut frac_val = 0L
    let mut frac_div = 1.0
    while cursor.peek().map(is_digit).unwrap_or(false) {
      let digit = cursor.peek().unwrap().to_int64() - 48L
      frac_val = frac_val * 10L + digit
      frac_div = frac_div * 10.0
      cursor.advance()
    }
    let frac_digits = cursor.position - frac_start
    let full_source = slice_string(cursor.input, start, cursor.position)
    if frac_digits == 0 || frac_digits > 3 {
      return Err(InvalidDecimal(full_source))
    }
    let d_int = int_val.to_double()
    let d_frac = frac_val.to_double() / frac_div
    let total = if negative { -(d_int + d_frac) } else { d_int + d_frac }
    Ok(SfDecimal(total))
  } else {
    if int_digits > 15 || int_val > 999_999_999_999_999L {
      return Err(IntegerOutOfRange(source))
    }
    if negative {
      Ok(SfInteger(-int_val))
    } else {
      Ok(SfInteger(int_val))
    }
  }
}

///|
fn parse_date(cursor : Cursor) -> Result[BareItem, ParseError] {
  let start = cursor.position
  cursor.advance() // consume '@'
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
    return Err(InvalidDate(source))
  }
  if cursor.peek() == Some((46 : UInt16)) {
    return Err(InvalidDate(source))
  }
  if digits > 15 || value > 999_999_999_999_999L {
    return Err(InvalidDate(source))
  }
  if negative {
    Ok(SfDate(-value))
  } else {
    Ok(SfDate(value))
  }
}

///|
fn parse_string_value(cursor : Cursor) -> Result[BareItem, ParseError] {
  let start = cursor.position
  cursor.advance() // consume '"'
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
fn parse_byte_sequence(cursor : Cursor) -> Result[BareItem, ParseError] {
  let start = cursor.position
  cursor.advance() // consume ':'
  let b64_start = cursor.position
  while !cursor.at_end() && cursor.peek() != Some((58 : UInt16)) {
    cursor.advance()
  }
  if cursor.at_end() {
    return Err(InvalidByteSequence(start))
  }
  let b64_str = slice_string(cursor.input, b64_start, cursor.position)
  cursor.advance() // consume closing ':'
  match base64_decode(b64_str) {
    Some(bytes) => Ok(SfByteSequence(bytes))
    None => Err(InvalidByteSequence(start))
  }
}

///|
fn parse_display_string(cursor : Cursor) -> Result[BareItem, ParseError] {
  let start = cursor.position
  cursor.advance() // consume '%'
  if cursor.peek() != Some((34 : UInt16)) {
    return Err(InvalidDisplayString(start))
  }
  cursor.advance() // consume '"'
  let raw_bytes : Array[Byte] = []
  while !cursor.at_end() {
    let ch = cursor.peek().unwrap()
    if ch == (34 : UInt16) {
      cursor.advance() // consume closing '"'
      match utf8_bytes_to_string(raw_bytes) {
        Some(str) => return Ok(SfDisplayString(str))
        None => return Err(InvalidDisplayString(start))
      }
    }
    if ch == (37 : UInt16) {
      cursor.advance() // consume '%'
      if cursor.position + 1 >= cursor.input.length() {
        return Err(InvalidDisplayString(cursor.position))
      }
      let h1 = cursor.input.at(cursor.position)
      let h2 = cursor.input.at(cursor.position + 1)
      if !is_lower_hex_digit(h1) || !is_lower_hex_digit(h2) {
        return Err(InvalidDisplayString(cursor.position))
      }
      let b = (lower_hex_value(h1) << 4) | lower_hex_value(h2)
      raw_bytes.push(b.to_byte())
      cursor.advance()
      cursor.advance()
      continue
    }
    if ch < (32 : UInt16) || ch > (126 : UInt16) {
      return Err(InvalidDisplayString(cursor.position))
    }
    raw_bytes.push(ch.to_int().to_byte())
    cursor.advance()
  }
  Err(InvalidDisplayString(start))
}

///|
fn parse_bare_item(cursor : Cursor) -> Result[BareItem, ParseError] {
  match cursor.peek() {
    None => Err(EmptyInput)
    Some(ch) if ch == (63 : UInt16) => parse_boolean(cursor)
    Some(ch) if ch == (34 : UInt16) => parse_string_value(cursor)
    Some(ch) if ch == (45 : UInt16) || is_digit(ch) => parse_number(cursor)
    Some(ch) if ch == (58 : UInt16) => parse_byte_sequence(cursor)
    Some(ch) if ch == (64 : UInt16) => parse_date(cursor)
    Some(ch) if ch == (37 : UInt16) => parse_display_string(cursor)
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
    cursor.advance() // consume ';'
    cursor.skip_sp()
    let key = match parse_key(cursor) {
      Ok(value) => value
      Err(error) => return Err(error)
    }
    let value = if cursor.peek() == Some((61 : UInt16)) {
      cursor.advance() // consume '='
      match parse_bare_item(cursor) {
        Ok(value) => value
        Err(error) => return Err(error)
      }
    } else {
      SfBoolean(true)
    }
    insert_parameter(parameters, { key, value, })
  }
  Ok(parameters)
}

///|
fn parse_item_with_cursor(cursor : Cursor) -> Result[Item, ParseError] {
  let value = match parse_bare_item(cursor) {
    Ok(val) => val
    Err(err) => return Err(err)
  }
  let parameters = match parse_parameters(cursor) {
    Ok(params) => params
    Err(err) => return Err(err)
  }
  Ok({ value, parameters, })
}

///|
fn parse_inner_list_with_cursor(
  cursor : Cursor,
) -> Result[InnerList, ParseError] {
  let start = cursor.position
  cursor.advance() // consume '('
  let items : Array[Item] = []
  while !cursor.at_end() {
    cursor.skip_sp()
    if cursor.peek() == Some((41 : UInt16)) {
      break
    }
    let item = match parse_item_with_cursor(cursor) {
      Ok(i) => i
      Err(err) => return Err(err)
    }
    items.push(item)
    if cursor.peek() != Some((41 : UInt16)) &&
      cursor.peek() != Some((32 : UInt16)) {
      return Err(InvalidInnerList(cursor.position))
    }
  }
  if cursor.peek() != Some((41 : UInt16)) {
    return Err(InvalidInnerList(start))
  }
  cursor.advance() // consume ')'
  let parameters = match parse_parameters(cursor) {
    Ok(params) => params
    Err(err) => return Err(err)
  }
  Ok({ items, parameters, })
}

///|
fn parse_list_member(cursor : Cursor) -> Result[ListMember, ParseError] {
  if cursor.peek() == Some((40 : UInt16)) {
    match parse_inner_list_with_cursor(cursor) {
      Ok(il) => Ok(ListMember::InnerList(il))
      Err(err) => Err(err)
    }
  } else {
    match parse_item_with_cursor(cursor) {
      Ok(item) => Ok(ListMember::Item(item))
      Err(err) => Err(err)
    }
  }
}

///|
/// Parses a single RFC 9651 Item from an HTTP field string.
pub fn parse_item(input : String) -> Result[Item, ParseError] {
  let cursor : Cursor = { input, position: 0, }
  cursor.skip_sp()
  if cursor.at_end() {
    return Err(EmptyInput)
  }
  let item = match parse_item_with_cursor(cursor) {
    Ok(it) => it
    Err(err) => return Err(err)
  }
  cursor.skip_sp()
  if !cursor.at_end() {
    return Err(TrailingCharacters(cursor.position))
  }
  Ok(item)
}

///|
/// Parses an RFC 9651 List from an HTTP field string.
pub fn parse_list(input : String) -> Result[Array[ListMember], ParseError] {
  let cursor : Cursor = { input, position: 0, }
  cursor.skip_sp()
  if cursor.at_end() {
    return Ok([])
  }
  let list : Array[ListMember] = []
  while true {
    let entry = match parse_list_member(cursor) {
      Ok(m) => m
      Err(err) => return Err(err)
    }
    list.push(entry)
    cursor.skip_ows()
    if cursor.at_end() {
      break
    }
    if cursor.peek() != Some((44 : UInt16)) {
      return Err(InvalidList(cursor.position))
    }
    cursor.advance()
    cursor.skip_ows()
    if cursor.at_end() {
      return Err(InvalidList(cursor.position))
    }
  }
  Ok(list)
}

///|
fn insert_dictionary_entry(
  dict : Array[DictionaryMember],
  entry : DictionaryMember,
) -> Unit {
  let mut index = 0
  while index < dict.length() {
    if dict[index].key == entry.key {
      dict[index] = entry
      return
    }
    index = index + 1
  }
  dict.push(entry)
}

///|
/// Parses an RFC 9651 Dictionary from an HTTP field string.
pub fn parse_dictionary(
  input : String,
) -> Result[Array[DictionaryMember], ParseError] {
  let cursor : Cursor = { input, position: 0, }
  cursor.skip_sp()
  if cursor.at_end() {
    return Ok([])
  }
  let dict : Array[DictionaryMember] = []
  while true {
    let key = match parse_key(cursor) {
      Ok(k) => k
      Err(err) => return Err(err)
    }
    let value : ListMember = if cursor.peek() == Some((61 : UInt16)) {
      cursor.advance()
      match parse_list_member(cursor) {
        Ok(m) => m
        Err(err) => return Err(err)
      }
    } else {
      let parameters = match parse_parameters(cursor) {
        Ok(params) => params
        Err(err) => return Err(err)
      }
      Item({ value: SfBoolean(true), parameters, })
    }
    insert_dictionary_entry(dict, { key, value, })
    cursor.skip_ows()
    if cursor.at_end() {
      break
    }
    if cursor.peek() != Some((44 : UInt16)) {
      return Err(InvalidDictionary(cursor.position))
    }
    cursor.advance()
    cursor.skip_ows()
    if cursor.at_end() {
      return Err(InvalidDictionary(cursor.position))
    }
  }
  Ok(dict)
}
