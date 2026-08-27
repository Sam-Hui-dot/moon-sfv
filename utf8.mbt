///|
pub fn string_to_utf8_bytes(str : String) -> Array[Byte] {
  let bytes : Array[Byte] = []
  let len = str.length()
  let mut i = 0
  while i < len {
    let u = str.at(i).to_int()
    let mut cp = u
    if u >= 0xD800 && u <= 0xDBFF && i + 1 < len {
      let low = str.at(i + 1).to_int()
      if low >= 0xDC00 && low <= 0xDFFF {
        cp = 0x10000 + ((u - 0xD800) << 10) + (low - 0xDC00)
        i = i + 1
      }
    }
    if cp <= 0x7F {
      bytes.push(cp.to_byte())
    } else if cp <= 0x7FF {
      bytes.push(((cp >> 6) | 0xC0).to_byte())
      bytes.push(((cp & 0x3F) | 0x80).to_byte())
    } else if cp <= 0xFFFF {
      bytes.push(((cp >> 12) | 0xE0).to_byte())
      bytes.push((((cp >> 6) & 0x3F) | 0x80).to_byte())
      bytes.push(((cp & 0x3F) | 0x80).to_byte())
    } else {
      bytes.push(((cp >> 18) | 0xF0).to_byte())
      bytes.push((((cp >> 12) & 0x3F) | 0x80).to_byte())
      bytes.push((((cp >> 6) & 0x3F) | 0x80).to_byte())
      bytes.push(((cp & 0x3F) | 0x80).to_byte())
    }
    i = i + 1
  }
  bytes
}

///|
pub fn utf8_bytes_to_string(bytes : Array[Byte]) -> String? {
  let builder = StringBuilder::StringBuilder()
  let len = bytes.length()
  let mut i = 0
  while i < len {
    let b0 = bytes[i].to_int()
    if b0 <= 0x7F {
      let ch = match b0.to_char() {
        Some(c) => c
        None => return None
      }
      builder.write_char(ch)
      i = i + 1
    } else if b0 >= 0xC2 && b0 <= 0xDF {
      if i + 1 >= len {
        return None
      }
      let b1 = bytes[i + 1].to_int()
      if (b1 & 0xC0) != 0x80 {
        return None
      }
      let cp = ((b0 & 0x1F) << 6) | (b1 & 0x3F)
      let ch = match cp.to_char() {
        Some(c) => c
        None => return None
      }
      builder.write_char(ch)
      i = i + 2
    } else if b0 >= 0xE0 && b0 <= 0xEF {
      if i + 2 >= len {
        return None
      }
      let b1 = bytes[i + 1].to_int()
      let b2 = bytes[i + 2].to_int()
      if (b1 & 0xC0) != 0x80 || (b2 & 0xC0) != 0x80 {
        return None
      }
      if b0 == 0xE0 && b1 < 0xA0 {
        return None // overlong
      }
      if b0 == 0xED && b1 >= 0xA0 {
        return None // surrogate
      }
      let cp = ((b0 & 0x0F) << 12) | ((b1 & 0x3F) << 6) | (b2 & 0x3F)
      let ch = match cp.to_char() {
        Some(c) => c
        None => return None
      }
      builder.write_char(ch)
      i = i + 3
    } else if b0 >= 0xF0 && b0 <= 0xF4 {
      if i + 3 >= len {
        return None
      }
      let b1 = bytes[i + 1].to_int()
      let b2 = bytes[i + 2].to_int()
      let b3 = bytes[i + 3].to_int()
      if (b1 & 0xC0) != 0x80 || (b2 & 0xC0) != 0x80 || (b3 & 0xC0) != 0x80 {
        return None
      }
      if b0 == 0xF0 && b1 < 0x90 {
        return None // overlong
      }
      if b0 == 0xF4 && b1 > 0x8F {
        return None // > 0x10FFFF
      }
      let cp = ((b0 & 0x07) << 18) |
        ((b1 & 0x3F) << 12) |
        ((b2 & 0x3F) << 6) |
        (b3 & 0x3F)
      let ch = match cp.to_char() {
        Some(c) => c
        None => return None
      }
      builder.write_char(ch)
      i = i + 4
    } else {
      return None
    }
  }
  Some(builder.to_string())
}
