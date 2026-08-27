///| Conformance test vectors generated from httpwg/structured-field-tests
///| BSD 3-Clause License - IETF Trust

///|
test "httpwg: key-generated - 0x00 as a single-character dictionary key" {
  expect_parse_dict_error("\u0000=1")
}

///|
test "httpwg: key-generated - 0x01 as a single-character dictionary key" {
  expect_parse_dict_error("\u0001=1")
}

///|
test "httpwg: key-generated - 0x02 as a single-character dictionary key" {
  expect_parse_dict_error("\u0002=1")
}

///|
test "httpwg: key-generated - 0x03 as a single-character dictionary key" {
  expect_parse_dict_error("\u0003=1")
}

///|
test "httpwg: key-generated - 0x04 as a single-character dictionary key" {
  expect_parse_dict_error("\u0004=1")
}

///|
test "httpwg: key-generated - 0x05 as a single-character dictionary key" {
  expect_parse_dict_error("\u0005=1")
}

///|
test "httpwg: key-generated - 0x06 as a single-character dictionary key" {
  expect_parse_dict_error("\u0006=1")
}

///|
test "httpwg: key-generated - 0x07 as a single-character dictionary key" {
  expect_parse_dict_error("\u0007=1")
}

///|
test "httpwg: key-generated - 0x08 as a single-character dictionary key" {
  expect_parse_dict_error("\u0008=1")
}

///|
test "httpwg: key-generated - 0x09 as a single-character dictionary key" {
  expect_parse_dict_error("\t=1")
}

///|
test "httpwg: key-generated - 0x0a as a single-character dictionary key" {
  expect_parse_dict_error("\n=1")
}

///|
test "httpwg: key-generated - 0x0b as a single-character dictionary key" {
  expect_parse_dict_error("\u000b=1")
}

///|
test "httpwg: key-generated - 0x0c as a single-character dictionary key" {
  expect_parse_dict_error("\u000c=1")
}

///|
test "httpwg: key-generated - 0x0d as a single-character dictionary key" {
  expect_parse_dict_error("\r=1")
}

///|
test "httpwg: key-generated - 0x0e as a single-character dictionary key" {
  expect_parse_dict_error("\u000e=1")
}

///|
test "httpwg: key-generated - 0x0f as a single-character dictionary key" {
  expect_parse_dict_error("\u000f=1")
}

///|
test "httpwg: key-generated - 0x10 as a single-character dictionary key" {
  expect_parse_dict_error("\u0010=1")
}

///|
test "httpwg: key-generated - 0x11 as a single-character dictionary key" {
  expect_parse_dict_error("\u0011=1")
}

///|
test "httpwg: key-generated - 0x12 as a single-character dictionary key" {
  expect_parse_dict_error("\u0012=1")
}

///|
test "httpwg: key-generated - 0x13 as a single-character dictionary key" {
  expect_parse_dict_error("\u0013=1")
}

///|
test "httpwg: key-generated - 0x14 as a single-character dictionary key" {
  expect_parse_dict_error("\u0014=1")
}

///|
test "httpwg: key-generated - 0x15 as a single-character dictionary key" {
  expect_parse_dict_error("\u0015=1")
}

///|
test "httpwg: key-generated - 0x16 as a single-character dictionary key" {
  expect_parse_dict_error("\u0016=1")
}

///|
test "httpwg: key-generated - 0x17 as a single-character dictionary key" {
  expect_parse_dict_error("\u0017=1")
}

///|
test "httpwg: key-generated - 0x18 as a single-character dictionary key" {
  expect_parse_dict_error("\u0018=1")
}

///|
test "httpwg: key-generated - 0x19 as a single-character dictionary key" {
  expect_parse_dict_error("\u0019=1")
}

///|
test "httpwg: key-generated - 0x1a as a single-character dictionary key" {
  expect_parse_dict_error("\u001a=1")
}

///|
test "httpwg: key-generated - 0x1b as a single-character dictionary key" {
  expect_parse_dict_error("\u001b=1")
}

///|
test "httpwg: key-generated - 0x1c as a single-character dictionary key" {
  expect_parse_dict_error("\u001c=1")
}

///|
test "httpwg: key-generated - 0x1d as a single-character dictionary key" {
  expect_parse_dict_error("\u001d=1")
}

///|
test "httpwg: key-generated - 0x1e as a single-character dictionary key" {
  expect_parse_dict_error("\u001e=1")
}

///|
test "httpwg: key-generated - 0x1f as a single-character dictionary key" {
  expect_parse_dict_error("\u001f=1")
}

///|
test "httpwg: key-generated - 0x20 as a single-character dictionary key" {
  expect_parse_dict_error("=1")
}

///|
test "httpwg: key-generated - 0x21 as a single-character dictionary key" {
  expect_parse_dict_error("!=1")
}

///|
test "httpwg: key-generated - 0x22 as a single-character dictionary key" {
  expect_parse_dict_error("\"=1")
}

///|
test "httpwg: key-generated - 0x23 as a single-character dictionary key" {
  expect_parse_dict_error("#=1")
}

///|
test "httpwg: key-generated - 0x24 as a single-character dictionary key" {
  expect_parse_dict_error("$=1")
}

///|
test "httpwg: key-generated - 0x25 as a single-character dictionary key" {
  expect_parse_dict_error("%=1")
}

///|
test "httpwg: key-generated - 0x26 as a single-character dictionary key" {
  expect_parse_dict_error("&=1")
}

///|
test "httpwg: key-generated - 0x27 as a single-character dictionary key" {
  expect_parse_dict_error("'=1")
}

///|
test "httpwg: key-generated - 0x28 as a single-character dictionary key" {
  expect_parse_dict_error("(=1")
}

///|
test "httpwg: key-generated - 0x29 as a single-character dictionary key" {
  expect_parse_dict_error(")=1")
}

///|
test "httpwg: key-generated - 0x2a as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("*", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("*=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "*=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x2b as a single-character dictionary key" {
  expect_parse_dict_error("+=1")
}

///|
test "httpwg: key-generated - 0x2c as a single-character dictionary key" {
  expect_parse_dict_error(",=1")
}

///|
test "httpwg: key-generated - 0x2d as a single-character dictionary key" {
  expect_parse_dict_error("-=1")
}

///|
test "httpwg: key-generated - 0x2e as a single-character dictionary key" {
  expect_parse_dict_error(".=1")
}

///|
test "httpwg: key-generated - 0x2f as a single-character dictionary key" {
  expect_parse_dict_error("/=1")
}

///|
test "httpwg: key-generated - 0x30 as a single-character dictionary key" {
  expect_parse_dict_error("0=1")
}

///|
test "httpwg: key-generated - 0x31 as a single-character dictionary key" {
  expect_parse_dict_error("1=1")
}

///|
test "httpwg: key-generated - 0x32 as a single-character dictionary key" {
  expect_parse_dict_error("2=1")
}

///|
test "httpwg: key-generated - 0x33 as a single-character dictionary key" {
  expect_parse_dict_error("3=1")
}

///|
test "httpwg: key-generated - 0x34 as a single-character dictionary key" {
  expect_parse_dict_error("4=1")
}

///|
test "httpwg: key-generated - 0x35 as a single-character dictionary key" {
  expect_parse_dict_error("5=1")
}

///|
test "httpwg: key-generated - 0x36 as a single-character dictionary key" {
  expect_parse_dict_error("6=1")
}

///|
test "httpwg: key-generated - 0x37 as a single-character dictionary key" {
  expect_parse_dict_error("7=1")
}

///|
test "httpwg: key-generated - 0x38 as a single-character dictionary key" {
  expect_parse_dict_error("8=1")
}

///|
test "httpwg: key-generated - 0x39 as a single-character dictionary key" {
  expect_parse_dict_error("9=1")
}

///|
test "httpwg: key-generated - 0x3a as a single-character dictionary key" {
  expect_parse_dict_error(":=1")
}

///|
test "httpwg: key-generated - 0x3b as a single-character dictionary key" {
  expect_parse_dict_error(";=1")
}

///|
test "httpwg: key-generated - 0x3c as a single-character dictionary key" {
  expect_parse_dict_error("<=1")
}

///|
test "httpwg: key-generated - 0x3d as a single-character dictionary key" {
  expect_parse_dict_error("==1")
}

///|
test "httpwg: key-generated - 0x3e as a single-character dictionary key" {
  expect_parse_dict_error(">=1")
}

///|
test "httpwg: key-generated - 0x3f as a single-character dictionary key" {
  expect_parse_dict_error("?=1")
}

///|
test "httpwg: key-generated - 0x40 as a single-character dictionary key" {
  expect_parse_dict_error("@=1")
}

///|
test "httpwg: key-generated - 0x41 as a single-character dictionary key" {
  expect_parse_dict_error("A=1")
}

///|
test "httpwg: key-generated - 0x42 as a single-character dictionary key" {
  expect_parse_dict_error("B=1")
}

///|
test "httpwg: key-generated - 0x43 as a single-character dictionary key" {
  expect_parse_dict_error("C=1")
}

///|
test "httpwg: key-generated - 0x44 as a single-character dictionary key" {
  expect_parse_dict_error("D=1")
}

///|
test "httpwg: key-generated - 0x45 as a single-character dictionary key" {
  expect_parse_dict_error("E=1")
}

///|
test "httpwg: key-generated - 0x46 as a single-character dictionary key" {
  expect_parse_dict_error("F=1")
}

///|
test "httpwg: key-generated - 0x47 as a single-character dictionary key" {
  expect_parse_dict_error("G=1")
}

///|
test "httpwg: key-generated - 0x48 as a single-character dictionary key" {
  expect_parse_dict_error("H=1")
}

///|
test "httpwg: key-generated - 0x49 as a single-character dictionary key" {
  expect_parse_dict_error("I=1")
}

///|
test "httpwg: key-generated - 0x4a as a single-character dictionary key" {
  expect_parse_dict_error("J=1")
}

///|
test "httpwg: key-generated - 0x4b as a single-character dictionary key" {
  expect_parse_dict_error("K=1")
}

///|
test "httpwg: key-generated - 0x4c as a single-character dictionary key" {
  expect_parse_dict_error("L=1")
}

///|
test "httpwg: key-generated - 0x4d as a single-character dictionary key" {
  expect_parse_dict_error("M=1")
}

///|
test "httpwg: key-generated - 0x4e as a single-character dictionary key" {
  expect_parse_dict_error("N=1")
}

///|
test "httpwg: key-generated - 0x4f as a single-character dictionary key" {
  expect_parse_dict_error("O=1")
}

///|
test "httpwg: key-generated - 0x50 as a single-character dictionary key" {
  expect_parse_dict_error("P=1")
}

///|
test "httpwg: key-generated - 0x51 as a single-character dictionary key" {
  expect_parse_dict_error("Q=1")
}

///|
test "httpwg: key-generated - 0x52 as a single-character dictionary key" {
  expect_parse_dict_error("R=1")
}

///|
test "httpwg: key-generated - 0x53 as a single-character dictionary key" {
  expect_parse_dict_error("S=1")
}

///|
test "httpwg: key-generated - 0x54 as a single-character dictionary key" {
  expect_parse_dict_error("T=1")
}

///|
test "httpwg: key-generated - 0x55 as a single-character dictionary key" {
  expect_parse_dict_error("U=1")
}

///|
test "httpwg: key-generated - 0x56 as a single-character dictionary key" {
  expect_parse_dict_error("V=1")
}

///|
test "httpwg: key-generated - 0x57 as a single-character dictionary key" {
  expect_parse_dict_error("W=1")
}

///|
test "httpwg: key-generated - 0x58 as a single-character dictionary key" {
  expect_parse_dict_error("X=1")
}

///|
test "httpwg: key-generated - 0x59 as a single-character dictionary key" {
  expect_parse_dict_error("Y=1")
}

///|
test "httpwg: key-generated - 0x5a as a single-character dictionary key" {
  expect_parse_dict_error("Z=1")
}

///|
test "httpwg: key-generated - 0x5b as a single-character dictionary key" {
  expect_parse_dict_error("[=1")
}

///|
test "httpwg: key-generated - 0x5c as a single-character dictionary key" {
  expect_parse_dict_error("\\=1")
}

///|
test "httpwg: key-generated - 0x5d as a single-character dictionary key" {
  expect_parse_dict_error("]=1")
}

///|
test "httpwg: key-generated - 0x5e as a single-character dictionary key" {
  expect_parse_dict_error("^=1")
}

///|
test "httpwg: key-generated - 0x5f as a single-character dictionary key" {
  expect_parse_dict_error("_=1")
}

///|
test "httpwg: key-generated - 0x60 as a single-character dictionary key" {
  expect_parse_dict_error("`=1")
}

///|
test "httpwg: key-generated - 0x61 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x62 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("b", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("b=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "b=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x63 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("c", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("c=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "c=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x64 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("d", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("d=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "d=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x65 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("e", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("e=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "e=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x66 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("f", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("f=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "f=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x67 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("g", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("g=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "g=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x68 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("h", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("h=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "h=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x69 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("i", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("i=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "i=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6a as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("j", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("j=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "j=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6b as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("k", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("k=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "k=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6c as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("l", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("l=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "l=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6d as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("m", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("m=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "m=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6e as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("n", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("n=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "n=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6f as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("o", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("o=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "o=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x70 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("p", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("p=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "p=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x71 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("q", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("q=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "q=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x72 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("r", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("r=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "r=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x73 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("s", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("s=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "s=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x74 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("t", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("t=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "t=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x75 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("u", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("u=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "u=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x76 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("v", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("v=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "v=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x77 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("w", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("w=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "w=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x78 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("x", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("x=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "x=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x79 as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("y", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("y=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "y=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x7a as a single-character dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("z", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("z=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "z=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x7b as a single-character dictionary key" {
  expect_parse_dict_error("{=1")
}

///|
test "httpwg: key-generated - 0x7c as a single-character dictionary key" {
  expect_parse_dict_error("|=1")
}

///|
test "httpwg: key-generated - 0x7d as a single-character dictionary key" {
  expect_parse_dict_error("}=1")
}

///|
test "httpwg: key-generated - 0x7e as a single-character dictionary key" {
  expect_parse_dict_error("~=1")
}

///|
test "httpwg: key-generated - 0x7f as a single-character dictionary key" {
  expect_parse_dict_error("\u007f=1")
}

///|
test "httpwg: key-generated - 0x00 in dictionary key" {
  expect_parse_dict_error("a\u0000a=1")
}

///|
test "httpwg: key-generated - 0x01 in dictionary key" {
  expect_parse_dict_error("a\u0001a=1")
}

///|
test "httpwg: key-generated - 0x02 in dictionary key" {
  expect_parse_dict_error("a\u0002a=1")
}

///|
test "httpwg: key-generated - 0x03 in dictionary key" {
  expect_parse_dict_error("a\u0003a=1")
}

///|
test "httpwg: key-generated - 0x04 in dictionary key" {
  expect_parse_dict_error("a\u0004a=1")
}

///|
test "httpwg: key-generated - 0x05 in dictionary key" {
  expect_parse_dict_error("a\u0005a=1")
}

///|
test "httpwg: key-generated - 0x06 in dictionary key" {
  expect_parse_dict_error("a\u0006a=1")
}

///|
test "httpwg: key-generated - 0x07 in dictionary key" {
  expect_parse_dict_error("a\u0007a=1")
}

///|
test "httpwg: key-generated - 0x08 in dictionary key" {
  expect_parse_dict_error("a\u0008a=1")
}

///|
test "httpwg: key-generated - 0x09 in dictionary key" {
  expect_parse_dict_error("a\ta=1")
}

///|
test "httpwg: key-generated - 0x0a in dictionary key" {
  expect_parse_dict_error("a\na=1")
}

///|
test "httpwg: key-generated - 0x0b in dictionary key" {
  expect_parse_dict_error("a\u000ba=1")
}

///|
test "httpwg: key-generated - 0x0c in dictionary key" {
  expect_parse_dict_error("a\u000ca=1")
}

///|
test "httpwg: key-generated - 0x0d in dictionary key" {
  expect_parse_dict_error("a\ra=1")
}

///|
test "httpwg: key-generated - 0x0e in dictionary key" {
  expect_parse_dict_error("a\u000ea=1")
}

///|
test "httpwg: key-generated - 0x0f in dictionary key" {
  expect_parse_dict_error("a\u000fa=1")
}

///|
test "httpwg: key-generated - 0x10 in dictionary key" {
  expect_parse_dict_error("a\u0010a=1")
}

///|
test "httpwg: key-generated - 0x11 in dictionary key" {
  expect_parse_dict_error("a\u0011a=1")
}

///|
test "httpwg: key-generated - 0x12 in dictionary key" {
  expect_parse_dict_error("a\u0012a=1")
}

///|
test "httpwg: key-generated - 0x13 in dictionary key" {
  expect_parse_dict_error("a\u0013a=1")
}

///|
test "httpwg: key-generated - 0x14 in dictionary key" {
  expect_parse_dict_error("a\u0014a=1")
}

///|
test "httpwg: key-generated - 0x15 in dictionary key" {
  expect_parse_dict_error("a\u0015a=1")
}

///|
test "httpwg: key-generated - 0x16 in dictionary key" {
  expect_parse_dict_error("a\u0016a=1")
}

///|
test "httpwg: key-generated - 0x17 in dictionary key" {
  expect_parse_dict_error("a\u0017a=1")
}

///|
test "httpwg: key-generated - 0x18 in dictionary key" {
  expect_parse_dict_error("a\u0018a=1")
}

///|
test "httpwg: key-generated - 0x19 in dictionary key" {
  expect_parse_dict_error("a\u0019a=1")
}

///|
test "httpwg: key-generated - 0x1a in dictionary key" {
  expect_parse_dict_error("a\u001aa=1")
}

///|
test "httpwg: key-generated - 0x1b in dictionary key" {
  expect_parse_dict_error("a\u001ba=1")
}

///|
test "httpwg: key-generated - 0x1c in dictionary key" {
  expect_parse_dict_error("a\u001ca=1")
}

///|
test "httpwg: key-generated - 0x1d in dictionary key" {
  expect_parse_dict_error("a\u001da=1")
}

///|
test "httpwg: key-generated - 0x1e in dictionary key" {
  expect_parse_dict_error("a\u001ea=1")
}

///|
test "httpwg: key-generated - 0x1f in dictionary key" {
  expect_parse_dict_error("a\u001fa=1")
}

///|
test "httpwg: key-generated - 0x20 in dictionary key" {
  expect_parse_dict_error("a a=1")
}

///|
test "httpwg: key-generated - 0x21 in dictionary key" {
  expect_parse_dict_error("a!a=1")
}

///|
test "httpwg: key-generated - 0x22 in dictionary key" {
  expect_parse_dict_error("a\"a=1")
}

///|
test "httpwg: key-generated - 0x23 in dictionary key" {
  expect_parse_dict_error("a#a=1")
}

///|
test "httpwg: key-generated - 0x24 in dictionary key" {
  expect_parse_dict_error("a$a=1")
}

///|
test "httpwg: key-generated - 0x25 in dictionary key" {
  expect_parse_dict_error("a%a=1")
}

///|
test "httpwg: key-generated - 0x26 in dictionary key" {
  expect_parse_dict_error("a&a=1")
}

///|
test "httpwg: key-generated - 0x27 in dictionary key" {
  expect_parse_dict_error("a'a=1")
}

///|
test "httpwg: key-generated - 0x28 in dictionary key" {
  expect_parse_dict_error("a(a=1")
}

///|
test "httpwg: key-generated - 0x29 in dictionary key" {
  expect_parse_dict_error("a)a=1")
}

///|
test "httpwg: key-generated - 0x2a in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a*a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a*a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a*a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x2b in dictionary key" {
  expect_parse_dict_error("a+a=1")
}

///|
test "httpwg: key-generated - 0x2c in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a,a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x2d in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a-a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a-a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a-a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x2e in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a.a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a.a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a.a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x2f in dictionary key" {
  expect_parse_dict_error("a/a=1")
}

///|
test "httpwg: key-generated - 0x30 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a0a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a0a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a0a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x31 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a1a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a1a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a1a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x32 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a2a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a2a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a2a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x33 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a3a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a3a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a3a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x34 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a4a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a4a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a4a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x35 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a5a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a5a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a5a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x36 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a6a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a6a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a6a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x37 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a7a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a7a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a7a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x38 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a8a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a8a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a8a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x39 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a9a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a9a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a9a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x3a in dictionary key" {
  expect_parse_dict_error("a:a=1")
}

///|
test "httpwg: key-generated - 0x3b in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a", member_item(item(SfBoolean(true), [param("a", SfInteger(1L))])))]
  match parse_dictionary("a;a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a;a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x3c in dictionary key" {
  expect_parse_dict_error("a<a=1")
}

///|
test "httpwg: key-generated - 0x3d in dictionary key" {
  expect_parse_dict_error("a=a=1")
}

///|
test "httpwg: key-generated - 0x3e in dictionary key" {
  expect_parse_dict_error("a>a=1")
}

///|
test "httpwg: key-generated - 0x3f in dictionary key" {
  expect_parse_dict_error("a?a=1")
}

///|
test "httpwg: key-generated - 0x40 in dictionary key" {
  expect_parse_dict_error("a@a=1")
}

///|
test "httpwg: key-generated - 0x41 in dictionary key" {
  expect_parse_dict_error("aAa=1")
}

///|
test "httpwg: key-generated - 0x42 in dictionary key" {
  expect_parse_dict_error("aBa=1")
}

///|
test "httpwg: key-generated - 0x43 in dictionary key" {
  expect_parse_dict_error("aCa=1")
}

///|
test "httpwg: key-generated - 0x44 in dictionary key" {
  expect_parse_dict_error("aDa=1")
}

///|
test "httpwg: key-generated - 0x45 in dictionary key" {
  expect_parse_dict_error("aEa=1")
}

///|
test "httpwg: key-generated - 0x46 in dictionary key" {
  expect_parse_dict_error("aFa=1")
}

///|
test "httpwg: key-generated - 0x47 in dictionary key" {
  expect_parse_dict_error("aGa=1")
}

///|
test "httpwg: key-generated - 0x48 in dictionary key" {
  expect_parse_dict_error("aHa=1")
}

///|
test "httpwg: key-generated - 0x49 in dictionary key" {
  expect_parse_dict_error("aIa=1")
}

///|
test "httpwg: key-generated - 0x4a in dictionary key" {
  expect_parse_dict_error("aJa=1")
}

///|
test "httpwg: key-generated - 0x4b in dictionary key" {
  expect_parse_dict_error("aKa=1")
}

///|
test "httpwg: key-generated - 0x4c in dictionary key" {
  expect_parse_dict_error("aLa=1")
}

///|
test "httpwg: key-generated - 0x4d in dictionary key" {
  expect_parse_dict_error("aMa=1")
}

///|
test "httpwg: key-generated - 0x4e in dictionary key" {
  expect_parse_dict_error("aNa=1")
}

///|
test "httpwg: key-generated - 0x4f in dictionary key" {
  expect_parse_dict_error("aOa=1")
}

///|
test "httpwg: key-generated - 0x50 in dictionary key" {
  expect_parse_dict_error("aPa=1")
}

///|
test "httpwg: key-generated - 0x51 in dictionary key" {
  expect_parse_dict_error("aQa=1")
}

///|
test "httpwg: key-generated - 0x52 in dictionary key" {
  expect_parse_dict_error("aRa=1")
}

///|
test "httpwg: key-generated - 0x53 in dictionary key" {
  expect_parse_dict_error("aSa=1")
}

///|
test "httpwg: key-generated - 0x54 in dictionary key" {
  expect_parse_dict_error("aTa=1")
}

///|
test "httpwg: key-generated - 0x55 in dictionary key" {
  expect_parse_dict_error("aUa=1")
}

///|
test "httpwg: key-generated - 0x56 in dictionary key" {
  expect_parse_dict_error("aVa=1")
}

///|
test "httpwg: key-generated - 0x57 in dictionary key" {
  expect_parse_dict_error("aWa=1")
}

///|
test "httpwg: key-generated - 0x58 in dictionary key" {
  expect_parse_dict_error("aXa=1")
}

///|
test "httpwg: key-generated - 0x59 in dictionary key" {
  expect_parse_dict_error("aYa=1")
}

///|
test "httpwg: key-generated - 0x5a in dictionary key" {
  expect_parse_dict_error("aZa=1")
}

///|
test "httpwg: key-generated - 0x5b in dictionary key" {
  expect_parse_dict_error("a[a=1")
}

///|
test "httpwg: key-generated - 0x5c in dictionary key" {
  expect_parse_dict_error("a\\a=1")
}

///|
test "httpwg: key-generated - 0x5d in dictionary key" {
  expect_parse_dict_error("a]a=1")
}

///|
test "httpwg: key-generated - 0x5e in dictionary key" {
  expect_parse_dict_error("a^a=1")
}

///|
test "httpwg: key-generated - 0x5f in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a_a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("a_a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a_a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x60 in dictionary key" {
  expect_parse_dict_error("a`a=1")
}

///|
test "httpwg: key-generated - 0x61 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aaa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aaa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aaa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x62 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aba", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aba=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aba=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x63 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aca", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aca=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aca=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x64 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ada", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ada=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ada=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x65 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aea", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aea=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aea=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x66 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("afa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("afa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "afa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x67 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aga", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aga=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aga=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x68 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aha", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aha=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aha=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x69 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aia", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aia=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aia=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6a in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aja", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aja=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aja=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6b in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aka", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aka=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aka=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6c in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ala", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ala=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ala=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6d in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ama", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ama=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ama=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6e in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ana", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ana=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ana=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6f in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aoa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aoa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aoa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x70 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("apa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("apa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "apa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x71 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aqa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aqa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aqa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x72 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ara", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ara=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ara=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x73 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("asa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("asa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "asa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x74 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ata", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ata=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ata=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x75 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aua", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aua=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aua=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x76 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ava", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ava=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ava=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x77 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("awa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("awa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "awa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x78 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("axa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("axa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "axa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x79 in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aya", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aya=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aya=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x7a in dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aza", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aza=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aza=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x7b in dictionary key" {
  expect_parse_dict_error("a{a=1")
}

///|
test "httpwg: key-generated - 0x7c in dictionary key" {
  expect_parse_dict_error("a|a=1")
}

///|
test "httpwg: key-generated - 0x7d in dictionary key" {
  expect_parse_dict_error("a}a=1")
}

///|
test "httpwg: key-generated - 0x7e in dictionary key" {
  expect_parse_dict_error("a~a=1")
}

///|
test "httpwg: key-generated - 0x7f in dictionary key" {
  expect_parse_dict_error("a\u007fa=1")
}

///|
test "httpwg: key-generated - 0x00 starting a dictionary key" {
  expect_parse_dict_error("\u0000a=1")
}

///|
test "httpwg: key-generated - 0x01 starting a dictionary key" {
  expect_parse_dict_error("\u0001a=1")
}

///|
test "httpwg: key-generated - 0x02 starting a dictionary key" {
  expect_parse_dict_error("\u0002a=1")
}

///|
test "httpwg: key-generated - 0x03 starting a dictionary key" {
  expect_parse_dict_error("\u0003a=1")
}

///|
test "httpwg: key-generated - 0x04 starting a dictionary key" {
  expect_parse_dict_error("\u0004a=1")
}

///|
test "httpwg: key-generated - 0x05 starting a dictionary key" {
  expect_parse_dict_error("\u0005a=1")
}

///|
test "httpwg: key-generated - 0x06 starting a dictionary key" {
  expect_parse_dict_error("\u0006a=1")
}

///|
test "httpwg: key-generated - 0x07 starting a dictionary key" {
  expect_parse_dict_error("\u0007a=1")
}

///|
test "httpwg: key-generated - 0x08 starting a dictionary key" {
  expect_parse_dict_error("\u0008a=1")
}

///|
test "httpwg: key-generated - 0x09 starting a dictionary key" {
  expect_parse_dict_error("\ta=1")
}

///|
test "httpwg: key-generated - 0x0a starting a dictionary key" {
  expect_parse_dict_error("\na=1")
}

///|
test "httpwg: key-generated - 0x0b starting a dictionary key" {
  expect_parse_dict_error("\u000ba=1")
}

///|
test "httpwg: key-generated - 0x0c starting a dictionary key" {
  expect_parse_dict_error("\u000ca=1")
}

///|
test "httpwg: key-generated - 0x0d starting a dictionary key" {
  expect_parse_dict_error("\ra=1")
}

///|
test "httpwg: key-generated - 0x0e starting a dictionary key" {
  expect_parse_dict_error("\u000ea=1")
}

///|
test "httpwg: key-generated - 0x0f starting a dictionary key" {
  expect_parse_dict_error("\u000fa=1")
}

///|
test "httpwg: key-generated - 0x10 starting a dictionary key" {
  expect_parse_dict_error("\u0010a=1")
}

///|
test "httpwg: key-generated - 0x11 starting a dictionary key" {
  expect_parse_dict_error("\u0011a=1")
}

///|
test "httpwg: key-generated - 0x12 starting a dictionary key" {
  expect_parse_dict_error("\u0012a=1")
}

///|
test "httpwg: key-generated - 0x13 starting a dictionary key" {
  expect_parse_dict_error("\u0013a=1")
}

///|
test "httpwg: key-generated - 0x14 starting a dictionary key" {
  expect_parse_dict_error("\u0014a=1")
}

///|
test "httpwg: key-generated - 0x15 starting a dictionary key" {
  expect_parse_dict_error("\u0015a=1")
}

///|
test "httpwg: key-generated - 0x16 starting a dictionary key" {
  expect_parse_dict_error("\u0016a=1")
}

///|
test "httpwg: key-generated - 0x17 starting a dictionary key" {
  expect_parse_dict_error("\u0017a=1")
}

///|
test "httpwg: key-generated - 0x18 starting a dictionary key" {
  expect_parse_dict_error("\u0018a=1")
}

///|
test "httpwg: key-generated - 0x19 starting a dictionary key" {
  expect_parse_dict_error("\u0019a=1")
}

///|
test "httpwg: key-generated - 0x1a starting a dictionary key" {
  expect_parse_dict_error("\u001aa=1")
}

///|
test "httpwg: key-generated - 0x1b starting a dictionary key" {
  expect_parse_dict_error("\u001ba=1")
}

///|
test "httpwg: key-generated - 0x1c starting a dictionary key" {
  expect_parse_dict_error("\u001ca=1")
}

///|
test "httpwg: key-generated - 0x1d starting a dictionary key" {
  expect_parse_dict_error("\u001da=1")
}

///|
test "httpwg: key-generated - 0x1e starting a dictionary key" {
  expect_parse_dict_error("\u001ea=1")
}

///|
test "httpwg: key-generated - 0x1f starting a dictionary key" {
  expect_parse_dict_error("\u001fa=1")
}

///|
test "httpwg: key-generated - 0x20 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary(" a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x21 starting a dictionary key" {
  expect_parse_dict_error("!a=1")
}

///|
test "httpwg: key-generated - 0x22 starting a dictionary key" {
  expect_parse_dict_error("\"a=1")
}

///|
test "httpwg: key-generated - 0x23 starting a dictionary key" {
  expect_parse_dict_error("#a=1")
}

///|
test "httpwg: key-generated - 0x24 starting a dictionary key" {
  expect_parse_dict_error("$a=1")
}

///|
test "httpwg: key-generated - 0x25 starting a dictionary key" {
  expect_parse_dict_error("%a=1")
}

///|
test "httpwg: key-generated - 0x26 starting a dictionary key" {
  expect_parse_dict_error("&a=1")
}

///|
test "httpwg: key-generated - 0x27 starting a dictionary key" {
  expect_parse_dict_error("'a=1")
}

///|
test "httpwg: key-generated - 0x28 starting a dictionary key" {
  expect_parse_dict_error("(a=1")
}

///|
test "httpwg: key-generated - 0x29 starting a dictionary key" {
  expect_parse_dict_error(")a=1")
}

///|
test "httpwg: key-generated - 0x2a starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("*a", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("*a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "*a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x2b starting a dictionary key" {
  expect_parse_dict_error("+a=1")
}

///|
test "httpwg: key-generated - 0x2c starting a dictionary key" {
  expect_parse_dict_error(",a=1")
}

///|
test "httpwg: key-generated - 0x2d starting a dictionary key" {
  expect_parse_dict_error("-a=1")
}

///|
test "httpwg: key-generated - 0x2e starting a dictionary key" {
  expect_parse_dict_error(".a=1")
}

///|
test "httpwg: key-generated - 0x2f starting a dictionary key" {
  expect_parse_dict_error("/a=1")
}

///|
test "httpwg: key-generated - 0x30 starting a dictionary key" {
  expect_parse_dict_error("0a=1")
}

///|
test "httpwg: key-generated - 0x31 starting a dictionary key" {
  expect_parse_dict_error("1a=1")
}

///|
test "httpwg: key-generated - 0x32 starting a dictionary key" {
  expect_parse_dict_error("2a=1")
}

///|
test "httpwg: key-generated - 0x33 starting a dictionary key" {
  expect_parse_dict_error("3a=1")
}

///|
test "httpwg: key-generated - 0x34 starting a dictionary key" {
  expect_parse_dict_error("4a=1")
}

///|
test "httpwg: key-generated - 0x35 starting a dictionary key" {
  expect_parse_dict_error("5a=1")
}

///|
test "httpwg: key-generated - 0x36 starting a dictionary key" {
  expect_parse_dict_error("6a=1")
}

///|
test "httpwg: key-generated - 0x37 starting a dictionary key" {
  expect_parse_dict_error("7a=1")
}

///|
test "httpwg: key-generated - 0x38 starting a dictionary key" {
  expect_parse_dict_error("8a=1")
}

///|
test "httpwg: key-generated - 0x39 starting a dictionary key" {
  expect_parse_dict_error("9a=1")
}

///|
test "httpwg: key-generated - 0x3a starting a dictionary key" {
  expect_parse_dict_error(":a=1")
}

///|
test "httpwg: key-generated - 0x3b starting a dictionary key" {
  expect_parse_dict_error(";a=1")
}

///|
test "httpwg: key-generated - 0x3c starting a dictionary key" {
  expect_parse_dict_error("<a=1")
}

///|
test "httpwg: key-generated - 0x3d starting a dictionary key" {
  expect_parse_dict_error("=a=1")
}

///|
test "httpwg: key-generated - 0x3e starting a dictionary key" {
  expect_parse_dict_error(">a=1")
}

///|
test "httpwg: key-generated - 0x3f starting a dictionary key" {
  expect_parse_dict_error("?a=1")
}

///|
test "httpwg: key-generated - 0x40 starting a dictionary key" {
  expect_parse_dict_error("@a=1")
}

///|
test "httpwg: key-generated - 0x41 starting a dictionary key" {
  expect_parse_dict_error("Aa=1")
}

///|
test "httpwg: key-generated - 0x42 starting a dictionary key" {
  expect_parse_dict_error("Ba=1")
}

///|
test "httpwg: key-generated - 0x43 starting a dictionary key" {
  expect_parse_dict_error("Ca=1")
}

///|
test "httpwg: key-generated - 0x44 starting a dictionary key" {
  expect_parse_dict_error("Da=1")
}

///|
test "httpwg: key-generated - 0x45 starting a dictionary key" {
  expect_parse_dict_error("Ea=1")
}

///|
test "httpwg: key-generated - 0x46 starting a dictionary key" {
  expect_parse_dict_error("Fa=1")
}

///|
test "httpwg: key-generated - 0x47 starting a dictionary key" {
  expect_parse_dict_error("Ga=1")
}

///|
test "httpwg: key-generated - 0x48 starting a dictionary key" {
  expect_parse_dict_error("Ha=1")
}

///|
test "httpwg: key-generated - 0x49 starting a dictionary key" {
  expect_parse_dict_error("Ia=1")
}

///|
test "httpwg: key-generated - 0x4a starting a dictionary key" {
  expect_parse_dict_error("Ja=1")
}

///|
test "httpwg: key-generated - 0x4b starting a dictionary key" {
  expect_parse_dict_error("Ka=1")
}

///|
test "httpwg: key-generated - 0x4c starting a dictionary key" {
  expect_parse_dict_error("La=1")
}

///|
test "httpwg: key-generated - 0x4d starting a dictionary key" {
  expect_parse_dict_error("Ma=1")
}

///|
test "httpwg: key-generated - 0x4e starting a dictionary key" {
  expect_parse_dict_error("Na=1")
}

///|
test "httpwg: key-generated - 0x4f starting a dictionary key" {
  expect_parse_dict_error("Oa=1")
}

///|
test "httpwg: key-generated - 0x50 starting a dictionary key" {
  expect_parse_dict_error("Pa=1")
}

///|
test "httpwg: key-generated - 0x51 starting a dictionary key" {
  expect_parse_dict_error("Qa=1")
}

///|
test "httpwg: key-generated - 0x52 starting a dictionary key" {
  expect_parse_dict_error("Ra=1")
}

///|
test "httpwg: key-generated - 0x53 starting a dictionary key" {
  expect_parse_dict_error("Sa=1")
}

///|
test "httpwg: key-generated - 0x54 starting a dictionary key" {
  expect_parse_dict_error("Ta=1")
}

///|
test "httpwg: key-generated - 0x55 starting a dictionary key" {
  expect_parse_dict_error("Ua=1")
}

///|
test "httpwg: key-generated - 0x56 starting a dictionary key" {
  expect_parse_dict_error("Va=1")
}

///|
test "httpwg: key-generated - 0x57 starting a dictionary key" {
  expect_parse_dict_error("Wa=1")
}

///|
test "httpwg: key-generated - 0x58 starting a dictionary key" {
  expect_parse_dict_error("Xa=1")
}

///|
test "httpwg: key-generated - 0x59 starting a dictionary key" {
  expect_parse_dict_error("Ya=1")
}

///|
test "httpwg: key-generated - 0x5a starting a dictionary key" {
  expect_parse_dict_error("Za=1")
}

///|
test "httpwg: key-generated - 0x5b starting a dictionary key" {
  expect_parse_dict_error("[a=1")
}

///|
test "httpwg: key-generated - 0x5c starting a dictionary key" {
  expect_parse_dict_error("\\a=1")
}

///|
test "httpwg: key-generated - 0x5d starting a dictionary key" {
  expect_parse_dict_error("]a=1")
}

///|
test "httpwg: key-generated - 0x5e starting a dictionary key" {
  expect_parse_dict_error("^a=1")
}

///|
test "httpwg: key-generated - 0x5f starting a dictionary key" {
  expect_parse_dict_error("_a=1")
}

///|
test "httpwg: key-generated - 0x60 starting a dictionary key" {
  expect_parse_dict_error("`a=1")
}

///|
test "httpwg: key-generated - 0x61 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("aa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("aa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "aa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x62 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ba", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ba=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ba=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x63 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ca", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ca=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ca=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x64 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("da", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("da=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "da=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x65 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ea", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ea=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ea=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x66 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("fa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("fa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "fa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x67 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ga", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ga=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ga=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x68 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ha", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ha=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ha=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x69 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ia", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ia=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ia=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6a starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ja", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ja=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ja=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6b starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ka", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ka=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ka=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6c starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("la", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("la=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "la=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6d starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ma", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ma=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ma=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6e starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("na", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("na=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "na=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6f starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("oa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("oa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "oa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x70 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("pa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("pa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "pa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x71 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("qa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("qa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "qa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x72 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ra", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ra=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ra=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x73 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("sa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("sa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "sa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x74 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ta", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ta=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ta=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x75 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ua", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ua=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ua=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x76 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("va", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("va=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "va=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x77 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("wa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("wa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "wa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x78 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("xa", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("xa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "xa=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x79 starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("ya", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("ya=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "ya=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x7a starting a dictionary key" {
  let expected : Array[DictionaryMember] = [dict_entry("za", member_item(bare_item(SfInteger(1L))))]
  match parse_dictionary("za=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "za=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x7b starting a dictionary key" {
  expect_parse_dict_error("{a=1")
}

///|
test "httpwg: key-generated - 0x7c starting a dictionary key" {
  expect_parse_dict_error("|a=1")
}

///|
test "httpwg: key-generated - 0x7d starting a dictionary key" {
  expect_parse_dict_error("}a=1")
}

///|
test "httpwg: key-generated - 0x7e starting a dictionary key" {
  expect_parse_dict_error("~a=1")
}

///|
test "httpwg: key-generated - 0x7f starting a dictionary key" {
  expect_parse_dict_error("\u007fa=1")
}

///|
test "httpwg: key-generated - 0x00 in parameterised list key" {
  expect_parse_list_error("foo; a\u0000a=1")
}

///|
test "httpwg: key-generated - 0x01 in parameterised list key" {
  expect_parse_list_error("foo; a\u0001a=1")
}

///|
test "httpwg: key-generated - 0x02 in parameterised list key" {
  expect_parse_list_error("foo; a\u0002a=1")
}

///|
test "httpwg: key-generated - 0x03 in parameterised list key" {
  expect_parse_list_error("foo; a\u0003a=1")
}

///|
test "httpwg: key-generated - 0x04 in parameterised list key" {
  expect_parse_list_error("foo; a\u0004a=1")
}

///|
test "httpwg: key-generated - 0x05 in parameterised list key" {
  expect_parse_list_error("foo; a\u0005a=1")
}

///|
test "httpwg: key-generated - 0x06 in parameterised list key" {
  expect_parse_list_error("foo; a\u0006a=1")
}

///|
test "httpwg: key-generated - 0x07 in parameterised list key" {
  expect_parse_list_error("foo; a\u0007a=1")
}

///|
test "httpwg: key-generated - 0x08 in parameterised list key" {
  expect_parse_list_error("foo; a\u0008a=1")
}

///|
test "httpwg: key-generated - 0x09 in parameterised list key" {
  expect_parse_list_error("foo; a\ta=1")
}

///|
test "httpwg: key-generated - 0x0a in parameterised list key" {
  expect_parse_list_error("foo; a\na=1")
}

///|
test "httpwg: key-generated - 0x0b in parameterised list key" {
  expect_parse_list_error("foo; a\u000ba=1")
}

///|
test "httpwg: key-generated - 0x0c in parameterised list key" {
  expect_parse_list_error("foo; a\u000ca=1")
}

///|
test "httpwg: key-generated - 0x0d in parameterised list key" {
  expect_parse_list_error("foo; a\ra=1")
}

///|
test "httpwg: key-generated - 0x0e in parameterised list key" {
  expect_parse_list_error("foo; a\u000ea=1")
}

///|
test "httpwg: key-generated - 0x0f in parameterised list key" {
  expect_parse_list_error("foo; a\u000fa=1")
}

///|
test "httpwg: key-generated - 0x10 in parameterised list key" {
  expect_parse_list_error("foo; a\u0010a=1")
}

///|
test "httpwg: key-generated - 0x11 in parameterised list key" {
  expect_parse_list_error("foo; a\u0011a=1")
}

///|
test "httpwg: key-generated - 0x12 in parameterised list key" {
  expect_parse_list_error("foo; a\u0012a=1")
}

///|
test "httpwg: key-generated - 0x13 in parameterised list key" {
  expect_parse_list_error("foo; a\u0013a=1")
}

///|
test "httpwg: key-generated - 0x14 in parameterised list key" {
  expect_parse_list_error("foo; a\u0014a=1")
}

///|
test "httpwg: key-generated - 0x15 in parameterised list key" {
  expect_parse_list_error("foo; a\u0015a=1")
}

///|
test "httpwg: key-generated - 0x16 in parameterised list key" {
  expect_parse_list_error("foo; a\u0016a=1")
}

///|
test "httpwg: key-generated - 0x17 in parameterised list key" {
  expect_parse_list_error("foo; a\u0017a=1")
}

///|
test "httpwg: key-generated - 0x18 in parameterised list key" {
  expect_parse_list_error("foo; a\u0018a=1")
}

///|
test "httpwg: key-generated - 0x19 in parameterised list key" {
  expect_parse_list_error("foo; a\u0019a=1")
}

///|
test "httpwg: key-generated - 0x1a in parameterised list key" {
  expect_parse_list_error("foo; a\u001aa=1")
}

///|
test "httpwg: key-generated - 0x1b in parameterised list key" {
  expect_parse_list_error("foo; a\u001ba=1")
}

///|
test "httpwg: key-generated - 0x1c in parameterised list key" {
  expect_parse_list_error("foo; a\u001ca=1")
}

///|
test "httpwg: key-generated - 0x1d in parameterised list key" {
  expect_parse_list_error("foo; a\u001da=1")
}

///|
test "httpwg: key-generated - 0x1e in parameterised list key" {
  expect_parse_list_error("foo; a\u001ea=1")
}

///|
test "httpwg: key-generated - 0x1f in parameterised list key" {
  expect_parse_list_error("foo; a\u001fa=1")
}

///|
test "httpwg: key-generated - 0x20 in parameterised list key" {
  expect_parse_list_error("foo; a a=1")
}

///|
test "httpwg: key-generated - 0x21 in parameterised list key" {
  expect_parse_list_error("foo; a!a=1")
}

///|
test "httpwg: key-generated - 0x22 in parameterised list key" {
  expect_parse_list_error("foo; a\"a=1")
}

///|
test "httpwg: key-generated - 0x23 in parameterised list key" {
  expect_parse_list_error("foo; a#a=1")
}

///|
test "httpwg: key-generated - 0x24 in parameterised list key" {
  expect_parse_list_error("foo; a$a=1")
}

///|
test "httpwg: key-generated - 0x25 in parameterised list key" {
  expect_parse_list_error("foo; a%a=1")
}

///|
test "httpwg: key-generated - 0x26 in parameterised list key" {
  expect_parse_list_error("foo; a&a=1")
}

///|
test "httpwg: key-generated - 0x27 in parameterised list key" {
  expect_parse_list_error("foo; a'a=1")
}

///|
test "httpwg: key-generated - 0x28 in parameterised list key" {
  expect_parse_list_error("foo; a(a=1")
}

///|
test "httpwg: key-generated - 0x29 in parameterised list key" {
  expect_parse_list_error("foo; a)a=1")
}

///|
test "httpwg: key-generated - 0x2a in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a*a", SfInteger(1L))]))]
  match parse_list("foo; a*a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a*a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x2b in parameterised list key" {
  expect_parse_list_error("foo; a+a=1")
}

///|
test "httpwg: key-generated - 0x2c in parameterised list key" {
  expect_parse_list_error("foo; a,a=1")
}

///|
test "httpwg: key-generated - 0x2d in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a-a", SfInteger(1L))]))]
  match parse_list("foo; a-a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a-a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x2e in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a.a", SfInteger(1L))]))]
  match parse_list("foo; a.a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a.a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x2f in parameterised list key" {
  expect_parse_list_error("foo; a/a=1")
}

///|
test "httpwg: key-generated - 0x30 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a0a", SfInteger(1L))]))]
  match parse_list("foo; a0a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a0a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x31 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a1a", SfInteger(1L))]))]
  match parse_list("foo; a1a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a1a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x32 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a2a", SfInteger(1L))]))]
  match parse_list("foo; a2a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a2a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x33 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a3a", SfInteger(1L))]))]
  match parse_list("foo; a3a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a3a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x34 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a4a", SfInteger(1L))]))]
  match parse_list("foo; a4a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a4a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x35 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a5a", SfInteger(1L))]))]
  match parse_list("foo; a5a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a5a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x36 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a6a", SfInteger(1L))]))]
  match parse_list("foo; a6a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a6a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x37 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a7a", SfInteger(1L))]))]
  match parse_list("foo; a7a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a7a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x38 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a8a", SfInteger(1L))]))]
  match parse_list("foo; a8a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a8a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x39 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a9a", SfInteger(1L))]))]
  match parse_list("foo; a9a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a9a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x3a in parameterised list key" {
  expect_parse_list_error("foo; a:a=1")
}

///|
test "httpwg: key-generated - 0x3b in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a", SfInteger(1L))]))]
  match parse_list("foo; a;a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x3c in parameterised list key" {
  expect_parse_list_error("foo; a<a=1")
}

///|
test "httpwg: key-generated - 0x3d in parameterised list key" {
  expect_parse_list_error("foo; a=a=1")
}

///|
test "httpwg: key-generated - 0x3e in parameterised list key" {
  expect_parse_list_error("foo; a>a=1")
}

///|
test "httpwg: key-generated - 0x3f in parameterised list key" {
  expect_parse_list_error("foo; a?a=1")
}

///|
test "httpwg: key-generated - 0x40 in parameterised list key" {
  expect_parse_list_error("foo; a@a=1")
}

///|
test "httpwg: key-generated - 0x41 in parameterised list key" {
  expect_parse_list_error("foo; aAa=1")
}

///|
test "httpwg: key-generated - 0x42 in parameterised list key" {
  expect_parse_list_error("foo; aBa=1")
}

///|
test "httpwg: key-generated - 0x43 in parameterised list key" {
  expect_parse_list_error("foo; aCa=1")
}

///|
test "httpwg: key-generated - 0x44 in parameterised list key" {
  expect_parse_list_error("foo; aDa=1")
}

///|
test "httpwg: key-generated - 0x45 in parameterised list key" {
  expect_parse_list_error("foo; aEa=1")
}

///|
test "httpwg: key-generated - 0x46 in parameterised list key" {
  expect_parse_list_error("foo; aFa=1")
}

///|
test "httpwg: key-generated - 0x47 in parameterised list key" {
  expect_parse_list_error("foo; aGa=1")
}

///|
test "httpwg: key-generated - 0x48 in parameterised list key" {
  expect_parse_list_error("foo; aHa=1")
}

///|
test "httpwg: key-generated - 0x49 in parameterised list key" {
  expect_parse_list_error("foo; aIa=1")
}

///|
test "httpwg: key-generated - 0x4a in parameterised list key" {
  expect_parse_list_error("foo; aJa=1")
}

///|
test "httpwg: key-generated - 0x4b in parameterised list key" {
  expect_parse_list_error("foo; aKa=1")
}

///|
test "httpwg: key-generated - 0x4c in parameterised list key" {
  expect_parse_list_error("foo; aLa=1")
}

///|
test "httpwg: key-generated - 0x4d in parameterised list key" {
  expect_parse_list_error("foo; aMa=1")
}

///|
test "httpwg: key-generated - 0x4e in parameterised list key" {
  expect_parse_list_error("foo; aNa=1")
}

///|
test "httpwg: key-generated - 0x4f in parameterised list key" {
  expect_parse_list_error("foo; aOa=1")
}

///|
test "httpwg: key-generated - 0x50 in parameterised list key" {
  expect_parse_list_error("foo; aPa=1")
}

///|
test "httpwg: key-generated - 0x51 in parameterised list key" {
  expect_parse_list_error("foo; aQa=1")
}

///|
test "httpwg: key-generated - 0x52 in parameterised list key" {
  expect_parse_list_error("foo; aRa=1")
}

///|
test "httpwg: key-generated - 0x53 in parameterised list key" {
  expect_parse_list_error("foo; aSa=1")
}

///|
test "httpwg: key-generated - 0x54 in parameterised list key" {
  expect_parse_list_error("foo; aTa=1")
}

///|
test "httpwg: key-generated - 0x55 in parameterised list key" {
  expect_parse_list_error("foo; aUa=1")
}

///|
test "httpwg: key-generated - 0x56 in parameterised list key" {
  expect_parse_list_error("foo; aVa=1")
}

///|
test "httpwg: key-generated - 0x57 in parameterised list key" {
  expect_parse_list_error("foo; aWa=1")
}

///|
test "httpwg: key-generated - 0x58 in parameterised list key" {
  expect_parse_list_error("foo; aXa=1")
}

///|
test "httpwg: key-generated - 0x59 in parameterised list key" {
  expect_parse_list_error("foo; aYa=1")
}

///|
test "httpwg: key-generated - 0x5a in parameterised list key" {
  expect_parse_list_error("foo; aZa=1")
}

///|
test "httpwg: key-generated - 0x5b in parameterised list key" {
  expect_parse_list_error("foo; a[a=1")
}

///|
test "httpwg: key-generated - 0x5c in parameterised list key" {
  expect_parse_list_error("foo; a\\a=1")
}

///|
test "httpwg: key-generated - 0x5d in parameterised list key" {
  expect_parse_list_error("foo; a]a=1")
}

///|
test "httpwg: key-generated - 0x5e in parameterised list key" {
  expect_parse_list_error("foo; a^a=1")
}

///|
test "httpwg: key-generated - 0x5f in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a_a", SfInteger(1L))]))]
  match parse_list("foo; a_a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a_a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x60 in parameterised list key" {
  expect_parse_list_error("foo; a`a=1")
}

///|
test "httpwg: key-generated - 0x61 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aaa", SfInteger(1L))]))]
  match parse_list("foo; aaa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aaa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x62 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aba", SfInteger(1L))]))]
  match parse_list("foo; aba=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aba=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x63 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aca", SfInteger(1L))]))]
  match parse_list("foo; aca=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aca=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x64 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ada", SfInteger(1L))]))]
  match parse_list("foo; ada=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ada=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x65 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aea", SfInteger(1L))]))]
  match parse_list("foo; aea=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aea=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x66 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("afa", SfInteger(1L))]))]
  match parse_list("foo; afa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;afa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x67 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aga", SfInteger(1L))]))]
  match parse_list("foo; aga=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aga=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x68 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aha", SfInteger(1L))]))]
  match parse_list("foo; aha=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aha=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x69 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aia", SfInteger(1L))]))]
  match parse_list("foo; aia=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aia=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6a in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aja", SfInteger(1L))]))]
  match parse_list("foo; aja=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aja=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6b in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aka", SfInteger(1L))]))]
  match parse_list("foo; aka=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aka=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6c in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ala", SfInteger(1L))]))]
  match parse_list("foo; ala=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ala=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6d in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ama", SfInteger(1L))]))]
  match parse_list("foo; ama=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ama=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6e in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ana", SfInteger(1L))]))]
  match parse_list("foo; ana=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ana=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6f in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aoa", SfInteger(1L))]))]
  match parse_list("foo; aoa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aoa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x70 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("apa", SfInteger(1L))]))]
  match parse_list("foo; apa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;apa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x71 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aqa", SfInteger(1L))]))]
  match parse_list("foo; aqa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aqa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x72 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ara", SfInteger(1L))]))]
  match parse_list("foo; ara=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ara=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x73 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("asa", SfInteger(1L))]))]
  match parse_list("foo; asa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;asa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x74 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ata", SfInteger(1L))]))]
  match parse_list("foo; ata=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ata=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x75 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aua", SfInteger(1L))]))]
  match parse_list("foo; aua=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aua=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x76 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ava", SfInteger(1L))]))]
  match parse_list("foo; ava=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ava=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x77 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("awa", SfInteger(1L))]))]
  match parse_list("foo; awa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;awa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x78 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("axa", SfInteger(1L))]))]
  match parse_list("foo; axa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;axa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x79 in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aya", SfInteger(1L))]))]
  match parse_list("foo; aya=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aya=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x7a in parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aza", SfInteger(1L))]))]
  match parse_list("foo; aza=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aza=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x7b in parameterised list key" {
  expect_parse_list_error("foo; a{a=1")
}

///|
test "httpwg: key-generated - 0x7c in parameterised list key" {
  expect_parse_list_error("foo; a|a=1")
}

///|
test "httpwg: key-generated - 0x7d in parameterised list key" {
  expect_parse_list_error("foo; a}a=1")
}

///|
test "httpwg: key-generated - 0x7e in parameterised list key" {
  expect_parse_list_error("foo; a~a=1")
}

///|
test "httpwg: key-generated - 0x7f in parameterised list key" {
  expect_parse_list_error("foo; a\u007fa=1")
}

///|
test "httpwg: key-generated - 0x00 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0000a=1")
}

///|
test "httpwg: key-generated - 0x01 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0001a=1")
}

///|
test "httpwg: key-generated - 0x02 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0002a=1")
}

///|
test "httpwg: key-generated - 0x03 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0003a=1")
}

///|
test "httpwg: key-generated - 0x04 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0004a=1")
}

///|
test "httpwg: key-generated - 0x05 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0005a=1")
}

///|
test "httpwg: key-generated - 0x06 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0006a=1")
}

///|
test "httpwg: key-generated - 0x07 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0007a=1")
}

///|
test "httpwg: key-generated - 0x08 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0008a=1")
}

///|
test "httpwg: key-generated - 0x09 starting a parameterised list key" {
  expect_parse_list_error("foo; \ta=1")
}

///|
test "httpwg: key-generated - 0x0a starting a parameterised list key" {
  expect_parse_list_error("foo; \na=1")
}

///|
test "httpwg: key-generated - 0x0b starting a parameterised list key" {
  expect_parse_list_error("foo; \u000ba=1")
}

///|
test "httpwg: key-generated - 0x0c starting a parameterised list key" {
  expect_parse_list_error("foo; \u000ca=1")
}

///|
test "httpwg: key-generated - 0x0d starting a parameterised list key" {
  expect_parse_list_error("foo; \ra=1")
}

///|
test "httpwg: key-generated - 0x0e starting a parameterised list key" {
  expect_parse_list_error("foo; \u000ea=1")
}

///|
test "httpwg: key-generated - 0x0f starting a parameterised list key" {
  expect_parse_list_error("foo; \u000fa=1")
}

///|
test "httpwg: key-generated - 0x10 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0010a=1")
}

///|
test "httpwg: key-generated - 0x11 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0011a=1")
}

///|
test "httpwg: key-generated - 0x12 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0012a=1")
}

///|
test "httpwg: key-generated - 0x13 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0013a=1")
}

///|
test "httpwg: key-generated - 0x14 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0014a=1")
}

///|
test "httpwg: key-generated - 0x15 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0015a=1")
}

///|
test "httpwg: key-generated - 0x16 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0016a=1")
}

///|
test "httpwg: key-generated - 0x17 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0017a=1")
}

///|
test "httpwg: key-generated - 0x18 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0018a=1")
}

///|
test "httpwg: key-generated - 0x19 starting a parameterised list key" {
  expect_parse_list_error("foo; \u0019a=1")
}

///|
test "httpwg: key-generated - 0x1a starting a parameterised list key" {
  expect_parse_list_error("foo; \u001aa=1")
}

///|
test "httpwg: key-generated - 0x1b starting a parameterised list key" {
  expect_parse_list_error("foo; \u001ba=1")
}

///|
test "httpwg: key-generated - 0x1c starting a parameterised list key" {
  expect_parse_list_error("foo; \u001ca=1")
}

///|
test "httpwg: key-generated - 0x1d starting a parameterised list key" {
  expect_parse_list_error("foo; \u001da=1")
}

///|
test "httpwg: key-generated - 0x1e starting a parameterised list key" {
  expect_parse_list_error("foo; \u001ea=1")
}

///|
test "httpwg: key-generated - 0x1f starting a parameterised list key" {
  expect_parse_list_error("foo; \u001fa=1")
}

///|
test "httpwg: key-generated - 0x20 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("a", SfInteger(1L))]))]
  match parse_list("foo;  a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x21 starting a parameterised list key" {
  expect_parse_list_error("foo; !a=1")
}

///|
test "httpwg: key-generated - 0x22 starting a parameterised list key" {
  expect_parse_list_error("foo; \"a=1")
}

///|
test "httpwg: key-generated - 0x23 starting a parameterised list key" {
  expect_parse_list_error("foo; #a=1")
}

///|
test "httpwg: key-generated - 0x24 starting a parameterised list key" {
  expect_parse_list_error("foo; $a=1")
}

///|
test "httpwg: key-generated - 0x25 starting a parameterised list key" {
  expect_parse_list_error("foo; %a=1")
}

///|
test "httpwg: key-generated - 0x26 starting a parameterised list key" {
  expect_parse_list_error("foo; &a=1")
}

///|
test "httpwg: key-generated - 0x27 starting a parameterised list key" {
  expect_parse_list_error("foo; 'a=1")
}

///|
test "httpwg: key-generated - 0x28 starting a parameterised list key" {
  expect_parse_list_error("foo; (a=1")
}

///|
test "httpwg: key-generated - 0x29 starting a parameterised list key" {
  expect_parse_list_error("foo; )a=1")
}

///|
test "httpwg: key-generated - 0x2a starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("*a", SfInteger(1L))]))]
  match parse_list("foo; *a=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;*a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x2b starting a parameterised list key" {
  expect_parse_list_error("foo; +a=1")
}

///|
test "httpwg: key-generated - 0x2c starting a parameterised list key" {
  expect_parse_list_error("foo; ,a=1")
}

///|
test "httpwg: key-generated - 0x2d starting a parameterised list key" {
  expect_parse_list_error("foo; -a=1")
}

///|
test "httpwg: key-generated - 0x2e starting a parameterised list key" {
  expect_parse_list_error("foo; .a=1")
}

///|
test "httpwg: key-generated - 0x2f starting a parameterised list key" {
  expect_parse_list_error("foo; /a=1")
}

///|
test "httpwg: key-generated - 0x30 starting a parameterised list key" {
  expect_parse_list_error("foo; 0a=1")
}

///|
test "httpwg: key-generated - 0x31 starting a parameterised list key" {
  expect_parse_list_error("foo; 1a=1")
}

///|
test "httpwg: key-generated - 0x32 starting a parameterised list key" {
  expect_parse_list_error("foo; 2a=1")
}

///|
test "httpwg: key-generated - 0x33 starting a parameterised list key" {
  expect_parse_list_error("foo; 3a=1")
}

///|
test "httpwg: key-generated - 0x34 starting a parameterised list key" {
  expect_parse_list_error("foo; 4a=1")
}

///|
test "httpwg: key-generated - 0x35 starting a parameterised list key" {
  expect_parse_list_error("foo; 5a=1")
}

///|
test "httpwg: key-generated - 0x36 starting a parameterised list key" {
  expect_parse_list_error("foo; 6a=1")
}

///|
test "httpwg: key-generated - 0x37 starting a parameterised list key" {
  expect_parse_list_error("foo; 7a=1")
}

///|
test "httpwg: key-generated - 0x38 starting a parameterised list key" {
  expect_parse_list_error("foo; 8a=1")
}

///|
test "httpwg: key-generated - 0x39 starting a parameterised list key" {
  expect_parse_list_error("foo; 9a=1")
}

///|
test "httpwg: key-generated - 0x3a starting a parameterised list key" {
  expect_parse_list_error("foo; :a=1")
}

///|
test "httpwg: key-generated - 0x3b starting a parameterised list key" {
  expect_parse_list_error("foo; ;a=1")
}

///|
test "httpwg: key-generated - 0x3c starting a parameterised list key" {
  expect_parse_list_error("foo; <a=1")
}

///|
test "httpwg: key-generated - 0x3d starting a parameterised list key" {
  expect_parse_list_error("foo; =a=1")
}

///|
test "httpwg: key-generated - 0x3e starting a parameterised list key" {
  expect_parse_list_error("foo; >a=1")
}

///|
test "httpwg: key-generated - 0x3f starting a parameterised list key" {
  expect_parse_list_error("foo; ?a=1")
}

///|
test "httpwg: key-generated - 0x40 starting a parameterised list key" {
  expect_parse_list_error("foo; @a=1")
}

///|
test "httpwg: key-generated - 0x41 starting a parameterised list key" {
  expect_parse_list_error("foo; Aa=1")
}

///|
test "httpwg: key-generated - 0x42 starting a parameterised list key" {
  expect_parse_list_error("foo; Ba=1")
}

///|
test "httpwg: key-generated - 0x43 starting a parameterised list key" {
  expect_parse_list_error("foo; Ca=1")
}

///|
test "httpwg: key-generated - 0x44 starting a parameterised list key" {
  expect_parse_list_error("foo; Da=1")
}

///|
test "httpwg: key-generated - 0x45 starting a parameterised list key" {
  expect_parse_list_error("foo; Ea=1")
}

///|
test "httpwg: key-generated - 0x46 starting a parameterised list key" {
  expect_parse_list_error("foo; Fa=1")
}

///|
test "httpwg: key-generated - 0x47 starting a parameterised list key" {
  expect_parse_list_error("foo; Ga=1")
}

///|
test "httpwg: key-generated - 0x48 starting a parameterised list key" {
  expect_parse_list_error("foo; Ha=1")
}

///|
test "httpwg: key-generated - 0x49 starting a parameterised list key" {
  expect_parse_list_error("foo; Ia=1")
}

///|
test "httpwg: key-generated - 0x4a starting a parameterised list key" {
  expect_parse_list_error("foo; Ja=1")
}

///|
test "httpwg: key-generated - 0x4b starting a parameterised list key" {
  expect_parse_list_error("foo; Ka=1")
}

///|
test "httpwg: key-generated - 0x4c starting a parameterised list key" {
  expect_parse_list_error("foo; La=1")
}

///|
test "httpwg: key-generated - 0x4d starting a parameterised list key" {
  expect_parse_list_error("foo; Ma=1")
}

///|
test "httpwg: key-generated - 0x4e starting a parameterised list key" {
  expect_parse_list_error("foo; Na=1")
}

///|
test "httpwg: key-generated - 0x4f starting a parameterised list key" {
  expect_parse_list_error("foo; Oa=1")
}

///|
test "httpwg: key-generated - 0x50 starting a parameterised list key" {
  expect_parse_list_error("foo; Pa=1")
}

///|
test "httpwg: key-generated - 0x51 starting a parameterised list key" {
  expect_parse_list_error("foo; Qa=1")
}

///|
test "httpwg: key-generated - 0x52 starting a parameterised list key" {
  expect_parse_list_error("foo; Ra=1")
}

///|
test "httpwg: key-generated - 0x53 starting a parameterised list key" {
  expect_parse_list_error("foo; Sa=1")
}

///|
test "httpwg: key-generated - 0x54 starting a parameterised list key" {
  expect_parse_list_error("foo; Ta=1")
}

///|
test "httpwg: key-generated - 0x55 starting a parameterised list key" {
  expect_parse_list_error("foo; Ua=1")
}

///|
test "httpwg: key-generated - 0x56 starting a parameterised list key" {
  expect_parse_list_error("foo; Va=1")
}

///|
test "httpwg: key-generated - 0x57 starting a parameterised list key" {
  expect_parse_list_error("foo; Wa=1")
}

///|
test "httpwg: key-generated - 0x58 starting a parameterised list key" {
  expect_parse_list_error("foo; Xa=1")
}

///|
test "httpwg: key-generated - 0x59 starting a parameterised list key" {
  expect_parse_list_error("foo; Ya=1")
}

///|
test "httpwg: key-generated - 0x5a starting a parameterised list key" {
  expect_parse_list_error("foo; Za=1")
}

///|
test "httpwg: key-generated - 0x5b starting a parameterised list key" {
  expect_parse_list_error("foo; [a=1")
}

///|
test "httpwg: key-generated - 0x5c starting a parameterised list key" {
  expect_parse_list_error("foo; \\a=1")
}

///|
test "httpwg: key-generated - 0x5d starting a parameterised list key" {
  expect_parse_list_error("foo; ]a=1")
}

///|
test "httpwg: key-generated - 0x5e starting a parameterised list key" {
  expect_parse_list_error("foo; ^a=1")
}

///|
test "httpwg: key-generated - 0x5f starting a parameterised list key" {
  expect_parse_list_error("foo; _a=1")
}

///|
test "httpwg: key-generated - 0x60 starting a parameterised list key" {
  expect_parse_list_error("foo; `a=1")
}

///|
test "httpwg: key-generated - 0x61 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("aa", SfInteger(1L))]))]
  match parse_list("foo; aa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;aa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x62 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ba", SfInteger(1L))]))]
  match parse_list("foo; ba=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ba=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x63 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ca", SfInteger(1L))]))]
  match parse_list("foo; ca=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ca=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x64 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("da", SfInteger(1L))]))]
  match parse_list("foo; da=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;da=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x65 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ea", SfInteger(1L))]))]
  match parse_list("foo; ea=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ea=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x66 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("fa", SfInteger(1L))]))]
  match parse_list("foo; fa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;fa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x67 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ga", SfInteger(1L))]))]
  match parse_list("foo; ga=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ga=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x68 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ha", SfInteger(1L))]))]
  match parse_list("foo; ha=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ha=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x69 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ia", SfInteger(1L))]))]
  match parse_list("foo; ia=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ia=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6a starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ja", SfInteger(1L))]))]
  match parse_list("foo; ja=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ja=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6b starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ka", SfInteger(1L))]))]
  match parse_list("foo; ka=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ka=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6c starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("la", SfInteger(1L))]))]
  match parse_list("foo; la=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;la=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6d starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ma", SfInteger(1L))]))]
  match parse_list("foo; ma=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ma=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6e starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("na", SfInteger(1L))]))]
  match parse_list("foo; na=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;na=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6f starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("oa", SfInteger(1L))]))]
  match parse_list("foo; oa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;oa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x70 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("pa", SfInteger(1L))]))]
  match parse_list("foo; pa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;pa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x71 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("qa", SfInteger(1L))]))]
  match parse_list("foo; qa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;qa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x72 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ra", SfInteger(1L))]))]
  match parse_list("foo; ra=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ra=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x73 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("sa", SfInteger(1L))]))]
  match parse_list("foo; sa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;sa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x74 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ta", SfInteger(1L))]))]
  match parse_list("foo; ta=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ta=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x75 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ua", SfInteger(1L))]))]
  match parse_list("foo; ua=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ua=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x76 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("va", SfInteger(1L))]))]
  match parse_list("foo; va=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;va=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x77 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("wa", SfInteger(1L))]))]
  match parse_list("foo; wa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;wa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x78 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("xa", SfInteger(1L))]))]
  match parse_list("foo; xa=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;xa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x79 starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("ya", SfInteger(1L))]))]
  match parse_list("foo; ya=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;ya=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x7a starting a parameterised list key" {
  let expected : Array[ListMember] = [member_item(item(SfToken("foo"), [param("za", SfInteger(1L))]))]
  match parse_list("foo; za=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo;za=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x7b starting a parameterised list key" {
  expect_parse_list_error("foo; {a=1")
}

///|
test "httpwg: key-generated - 0x7c starting a parameterised list key" {
  expect_parse_list_error("foo; |a=1")
}

///|
test "httpwg: key-generated - 0x7d starting a parameterised list key" {
  expect_parse_list_error("foo; }a=1")
}

///|
test "httpwg: key-generated - 0x7e starting a parameterised list key" {
  expect_parse_list_error("foo; ~a=1")
}

///|
test "httpwg: key-generated - 0x7f starting a parameterised list key" {
  expect_parse_list_error("foo; \u007fa=1")
}
