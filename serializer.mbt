///|
fn valid_parameter_key(key : String) -> Bool {
  if key.length() == 0 || !is_key_start(key.at(0)) {
    return false
  }
  let mut index = 1
  while index < key.length() {
    if !is_key_char(key.at(index)) {
      return false
    }
    index = index + 1
  }
  true
}

///|
fn valid_token(token : String) -> Bool {
  if token.length() == 0 {
    return false
  }
  let first = token.at(0)
  if !is_ascii_alpha(first) && first != (42 : UInt16) {
    return false
  }
  let mut index = 1
  while index < token.length() {
    if !is_token_char(token.at(index)) {
      return false
    }
    index = index + 1
  }
  true
}

///|
fn serialize_string_value(value : String) -> Result[String, SerializeError] {
  let builder = StringBuilder::StringBuilder(size_hint=value.length() + 2)
  builder.write_string("\"")
  let mut index = 0
  while index < value.length() {
    let ch = value.at(index)
    if ch < (32 : UInt16) || ch > (126 : UInt16) {
      return Err(InvalidString(value))
    }
    if ch == (34 : UInt16) || ch == (92 : UInt16) {
      builder.write_string("\\")
    }
    builder.write_substring(value, index, 1)
    index = index + 1
  }
  builder.write_string("\"")
  Ok(builder.to_string())
}

///|
fn serialize_bare_item(value : BareItem) -> Result[String, SerializeError] {
  match value {
    SfBoolean(true) => Ok("?1")
    SfBoolean(false) => Ok("?0")
    SfInteger(integer) =>
      if integer < -999_999_999_999_999L || integer > 999_999_999_999_999L {
        Err(IntegerOutOfRange(integer))
      } else {
        Ok(integer.to_string())
      }
    SfString(string) => serialize_string_value(string)
    SfToken(token) =>
      if valid_token(token) {
        Ok(token)
      } else {
        Err(InvalidToken(token))
      }
    _ => Err(UnsupportedBareItem)
  }
}

///|
/// Serialize an RFC 9651 Item into its canonical textual representation.
pub fn serialize_item(item : Item) -> Result[String, SerializeError] {
  let builder = StringBuilder::StringBuilder()
  match serialize_bare_item(item.value) {
    Ok(serialized) => builder.write_string(serialized)
    Err(error) => return Err(error)
  }
  let mut index = 0
  while index < item.parameters.length() {
    let parameter = item.parameters[index]
    if !valid_parameter_key(parameter.key) {
      return Err(InvalidParameterKey(parameter.key))
    }
    builder.write_string(";")
    builder.write_string(parameter.key)
    match parameter.value {
      SfBoolean(true) => ()
      _ => {
        builder.write_string("=")
        match serialize_bare_item(parameter.value) {
          Ok(serialized) => builder.write_string(serialized)
          Err(error) => return Err(error)
        }
      }
    }
    index = index + 1
  }
  Ok(builder.to_string())
}
