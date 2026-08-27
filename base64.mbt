///|
pub fn base64_encode(bytes : Bytes) -> String {
  let table = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
  let len = bytes.length()
  if len == 0 {
    return ""
  }
  let builder = StringBuilder::StringBuilder(size_hint=(len + 2) / 3 * 4)
  let mut i = 0
  while i + 2 < len {
    let b0 = bytes[i].to_int()
    let b1 = bytes[i + 1].to_int()
    let b2 = bytes[i + 2].to_int()
    let triple = (b0 << 16) | (b1 << 8) | b2
    let c0 = (triple >> 18) & 0x3F
    let c1 = (triple >> 12) & 0x3F
    let c2 = (triple >> 6) & 0x3F
    let c3 = triple & 0x3F
    builder.write_substring(table, c0, 1)
    builder.write_substring(table, c1, 1)
    builder.write_substring(table, c2, 1)
    builder.write_substring(table, c3, 1)
    i = i + 3
  }
  if i < len {
    let rem = len - i
    if rem == 1 {
      let b0 = bytes[i].to_int()
      let triple = b0 << 16
      let c0 = (triple >> 18) & 0x3F
      let c1 = (triple >> 12) & 0x3F
      builder.write_substring(table, c0, 1)
      builder.write_substring(table, c1, 1)
      builder.write_string("==")
    } else if rem == 2 {
      let b0 = bytes[i].to_int()
      let b1 = bytes[i + 1].to_int()
      let triple = (b0 << 16) | (b1 << 8)
      let c0 = (triple >> 18) & 0x3F
      let c1 = (triple >> 12) & 0x3F
      let c2 = (triple >> 6) & 0x3F
      builder.write_substring(table, c0, 1)
      builder.write_substring(table, c1, 1)
      builder.write_substring(table, c2, 1)
      builder.write_string("=")
    }
  }
  builder.to_string()
}

///|
fn base64_char_value(ch : UInt16) -> Int {
  if ch >= (65 : UInt16) && ch <= (90 : UInt16) {
    ch.to_int() - 65
  } else if ch >= (97 : UInt16) && ch <= (122 : UInt16) {
    ch.to_int() - 97 + 26
  } else if ch >= (48 : UInt16) && ch <= (57 : UInt16) {
    ch.to_int() - 48 + 52
  } else if ch == (43 : UInt16) {
    62
  } else if ch == (47 : UInt16) {
    63
  } else {
    -1
  }
}

///|
pub fn base64_decode(input : String) -> Bytes? {
  let mut s = input
  let rem = s.length() % 4
  if rem == 1 {
    return None
  } else if rem == 2 {
    s = s + "=="
  } else if rem == 3 {
    s = s + "="
  }
  let len = s.length()
  if len == 0 {
    return Some(Bytes::from_array([]))
  }
  let mut padding = 0
  if s.at(len - 1) == (61 : UInt16) {
    padding = padding + 1
    if s.at(len - 2) == (61 : UInt16) {
      padding = padding + 1
      if s.at(len - 3) == (61 : UInt16) {
        return None
      }
    }
  }
  let out_len = len / 4 * 3 - padding
  let out : Array[Byte] = Array::make(out_len, (0 : Byte))
  let mut out_idx = 0
  let mut in_idx = 0
  while in_idx < len {
    let c0 = s.at(in_idx)
    let c1 = s.at(in_idx + 1)
    let c2 = s.at(in_idx + 2)
    let c3 = s.at(in_idx + 3)

    let is_last_quantum = in_idx + 4 == len
    if is_last_quantum && padding > 0 {
      let v0 = base64_char_value(c0)
      let v1 = base64_char_value(c1)
      if v0 < 0 || v1 < 0 {
        return None
      }
      if padding == 1 {
        let v2 = base64_char_value(c2)
        if v2 < 0 || c3 != (61 : UInt16) {
          return None
        }
        let triple = (v0 << 18) | (v1 << 12) | (v2 << 6)
        if (triple & 0x3) != 0 {
          return None
        }
        out[out_idx] = ((triple >> 16) & 0xFF).to_byte()
        out[out_idx + 1] = ((triple >> 8) & 0xFF).to_byte()
        out_idx = out_idx + 2
      } else if padding == 2 {
        if c2 != (61 : UInt16) || c3 != (61 : UInt16) {
          return None
        }
        let triple = (v0 << 18) | (v1 << 12)
        if (triple & 0xF) != 0 {
          return None
        }
        out[out_idx] = ((triple >> 16) & 0xFF).to_byte()
        out_idx = out_idx + 1
      }
    } else {
      let v0 = base64_char_value(c0)
      let v1 = base64_char_value(c1)
      let v2 = base64_char_value(c2)
      let v3 = base64_char_value(c3)
      if v0 < 0 || v1 < 0 || v2 < 0 || v3 < 0 {
        return None
      }
      let triple = (v0 << 18) | (v1 << 12) | (v2 << 6) | v3
      out[out_idx] = ((triple >> 16) & 0xFF).to_byte()
      out[out_idx + 1] = ((triple >> 8) & 0xFF).to_byte()
      out[out_idx + 2] = (triple & 0xFF).to_byte()
      out_idx = out_idx + 3
    }
    in_idx = in_idx + 4
  }
  Some(Bytes::from_array(out))
}
