///|
fn valid_key(key : String) -> Bool {
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
fn serialize_decimal_value(value : Double) -> Result[String, SerializeError] {
  if value < -999_999_999_999.999 || value > 999_999_999_999.999 {
    return Err(DecimalOutOfRange(value))
  }
  let is_neg = value < 0.0
  let abs_val = if is_neg { -value } else { value }
  let scaled_floor = (abs_val * 1000.0).to_int64()
  let diff = abs_val * 1000.0 - scaled_floor.to_double()
  let scaled = if diff > 0.5000000001 ||
    (diff >= 0.4999999999 && scaled_floor % 2L != 0L) {
    scaled_floor + 1L
  } else {
    scaled_floor
  }
  let int_part = scaled / 1000L
  let frac_part = (scaled % 1000L).to_int()
  let builder = StringBuilder::StringBuilder()
  if is_neg && (int_part != 0L || frac_part != 0) {
    builder.write_string("-")
  }
  builder.write_string(int_part.to_string())
  builder.write_string(".")
  if frac_part == 0 {
    builder.write_string("0")
  } else if frac_part % 100 == 0 {
    builder.write_string((frac_part / 100).to_string())
  } else if frac_part % 10 == 0 {
    let d1 = frac_part / 100
    let d2 = frac_part / 10 % 10
    builder.write_string(d1.to_string())
    builder.write_string(d2.to_string())
  } else {
    let d1 = frac_part / 100
    let d2 = frac_part / 10 % 10
    let d3 = frac_part % 10
    builder.write_string(d1.to_string())
    builder.write_string(d2.to_string())
    builder.write_string(d3.to_string())
  }
  Ok(builder.to_string())
}

///|
fn hex_char_lower(val : Int) -> String {
  let table = "0123456789abcdef"
  let builder = StringBuilder::StringBuilder()
  builder.write_substring(table, val & 0xF, 1)
  builder.to_string()
}

///|
fn serialize_display_string_value(
  value : String,
) -> Result[String, SerializeError] {
  let bytes = string_to_utf8_bytes(value)
  let builder = StringBuilder::StringBuilder()
  builder.write_string("%\"")
  let mut i = 0
  while i < bytes.length() {
    let b = bytes[i].to_int()
    if b == 0x25 || b == 0x22 || b <= 0x1F || b >= 0x7F {
      builder.write_string("%")
      builder.write_string(hex_char_lower((b >> 4) & 0xF))
      builder.write_string(hex_char_lower(b & 0xF))
    } else {
      let ch = match b.to_char() {
        Some(c) => c
        None => return Err(InvalidDisplayString(value))
      }
      builder.write_char(ch)
    }
    i = i + 1
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
    SfDecimal(dec) => serialize_decimal_value(dec)
    SfString(string) => serialize_string_value(string)
    SfToken(token) =>
      if valid_token(token) {
        Ok(token)
      } else {
        Err(InvalidToken(token))
      }
    SfByteSequence(bytes) => {
      let b64 = base64_encode(bytes)
      Ok(":" + b64 + ":")
    }
    SfDate(date) =>
      if date < -999_999_999_999_999L || date > 999_999_999_999_999L {
        Err(DateOutOfRange(date))
      } else {
        Ok("@" + date.to_string())
      }
    SfDisplayString(dstr) => serialize_display_string_value(dstr)
  }
}

///|
fn serialize_parameters_into(
  builder : StringBuilder,
  parameters : Array[Parameter],
) -> Result[Unit, SerializeError] {
  let mut index = 0
  while index < parameters.length() {
    let parameter = parameters[index]
    if !valid_key(parameter.key) {
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
  Ok(())
}

///|
/// Serialize an RFC 9651 Item into its canonical textual representation.
pub fn serialize_item(item : Item) -> Result[String, SerializeError] {
  let builder = StringBuilder::StringBuilder()
  match serialize_bare_item(item.value) {
    Ok(serialized) => builder.write_string(serialized)
    Err(error) => return Err(error)
  }
  match serialize_parameters_into(builder, item.parameters) {
    Ok(_) => Ok(builder.to_string())
    Err(err) => Err(err)
  }
}

///|
fn serialize_inner_list_into(
  builder : StringBuilder,
  inner_list : InnerList,
) -> Result[Unit, SerializeError] {
  builder.write_string("(")
  let mut i = 0
  while i < inner_list.items.length() {
    if i > 0 {
      builder.write_string(" ")
    }
    let serialized = match serialize_item(inner_list.items[i]) {
      Ok(s) => s
      Err(err) => return Err(err)
    }
    builder.write_string(serialized)
    i = i + 1
  }
  builder.write_string(")")
  serialize_parameters_into(builder, inner_list.parameters)
}

///|
fn serialize_list_member_into(
  builder : StringBuilder,
  member_val : ListMember,
) -> Result[Unit, SerializeError] {
  match member_val {
    Item(item) => {
      let serialized = match serialize_item(item) {
        Ok(s) => s
        Err(err) => return Err(err)
      }
      builder.write_string(serialized)
      Ok(())
    }
    InnerList(il) => serialize_inner_list_into(builder, il)
  }
}

///|
/// Serialize an RFC 9651 List into its canonical textual representation.
pub fn serialize_list(
  list : Array[ListMember],
) -> Result[String, SerializeError] {
  let builder = StringBuilder::StringBuilder()
  let mut i = 0
  while i < list.length() {
    if i > 0 {
      builder.write_string(", ")
    }
    match serialize_list_member_into(builder, list[i]) {
      Ok(_) => ()
      Err(err) => return Err(err)
    }
    i = i + 1
  }
  Ok(builder.to_string())
}

///|
/// Serialize an RFC 9651 Dictionary into its canonical textual representation.
pub fn serialize_dictionary(
  dict : Array[DictionaryMember],
) -> Result[String, SerializeError] {
  let builder = StringBuilder::StringBuilder()
  let mut i = 0
  while i < dict.length() {
    if i > 0 {
      builder.write_string(", ")
    }
    let entry = dict[i]
    if !valid_key(entry.key) {
      return Err(InvalidDictionaryKey(entry.key))
    }
    builder.write_string(entry.key)
    match entry.value {
      Item({ value: SfBoolean(true), parameters }) =>
        match serialize_parameters_into(builder, parameters) {
          Ok(_) => ()
          Err(err) => return Err(err)
        }
      _ => {
        builder.write_string("=")
        match serialize_list_member_into(builder, entry.value) {
          Ok(_) => ()
          Err(err) => return Err(err)
        }
      }
    }
    i = i + 1
  }
  Ok(builder.to_string())
}
