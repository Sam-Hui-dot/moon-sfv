///| Conformance test vectors generated from httpwg/structured-field-tests
///| BSD 3-Clause License - IETF Trust

///|
test "httpwg: string-generated - 0x00 in string" {
  expect_parse_item_error("\" \u0000 \"")
}

///|
test "httpwg: string-generated - 0x01 in string" {
  expect_parse_item_error("\" \u0001 \"")
}

///|
test "httpwg: string-generated - 0x02 in string" {
  expect_parse_item_error("\" \u0002 \"")
}

///|
test "httpwg: string-generated - 0x03 in string" {
  expect_parse_item_error("\" \u0003 \"")
}

///|
test "httpwg: string-generated - 0x04 in string" {
  expect_parse_item_error("\" \u0004 \"")
}

///|
test "httpwg: string-generated - 0x05 in string" {
  expect_parse_item_error("\" \u0005 \"")
}

///|
test "httpwg: string-generated - 0x06 in string" {
  expect_parse_item_error("\" \u0006 \"")
}

///|
test "httpwg: string-generated - 0x07 in string" {
  expect_parse_item_error("\" \u0007 \"")
}

///|
test "httpwg: string-generated - 0x08 in string" {
  expect_parse_item_error("\" \u0008 \"")
}

///|
test "httpwg: string-generated - 0x09 in string" {
  expect_parse_item_error("\" \t \"")
}

///|
test "httpwg: string-generated - 0x0a in string" {
  expect_parse_item_error("\" \n \"")
}

///|
test "httpwg: string-generated - 0x0b in string" {
  expect_parse_item_error("\" \u000b \"")
}

///|
test "httpwg: string-generated - 0x0c in string" {
  expect_parse_item_error("\" \u000c \"")
}

///|
test "httpwg: string-generated - 0x0d in string" {
  expect_parse_item_error("\" \r \"")
}

///|
test "httpwg: string-generated - 0x0e in string" {
  expect_parse_item_error("\" \u000e \"")
}

///|
test "httpwg: string-generated - 0x0f in string" {
  expect_parse_item_error("\" \u000f \"")
}

///|
test "httpwg: string-generated - 0x10 in string" {
  expect_parse_item_error("\" \u0010 \"")
}

///|
test "httpwg: string-generated - 0x11 in string" {
  expect_parse_item_error("\" \u0011 \"")
}

///|
test "httpwg: string-generated - 0x12 in string" {
  expect_parse_item_error("\" \u0012 \"")
}

///|
test "httpwg: string-generated - 0x13 in string" {
  expect_parse_item_error("\" \u0013 \"")
}

///|
test "httpwg: string-generated - 0x14 in string" {
  expect_parse_item_error("\" \u0014 \"")
}

///|
test "httpwg: string-generated - 0x15 in string" {
  expect_parse_item_error("\" \u0015 \"")
}

///|
test "httpwg: string-generated - 0x16 in string" {
  expect_parse_item_error("\" \u0016 \"")
}

///|
test "httpwg: string-generated - 0x17 in string" {
  expect_parse_item_error("\" \u0017 \"")
}

///|
test "httpwg: string-generated - 0x18 in string" {
  expect_parse_item_error("\" \u0018 \"")
}

///|
test "httpwg: string-generated - 0x19 in string" {
  expect_parse_item_error("\" \u0019 \"")
}

///|
test "httpwg: string-generated - 0x1a in string" {
  expect_parse_item_error("\" \u001a \"")
}

///|
test "httpwg: string-generated - 0x1b in string" {
  expect_parse_item_error("\" \u001b \"")
}

///|
test "httpwg: string-generated - 0x1c in string" {
  expect_parse_item_error("\" \u001c \"")
}

///|
test "httpwg: string-generated - 0x1d in string" {
  expect_parse_item_error("\" \u001d \"")
}

///|
test "httpwg: string-generated - 0x1e in string" {
  expect_parse_item_error("\" \u001e \"")
}

///|
test "httpwg: string-generated - 0x1f in string" {
  expect_parse_item_error("\" \u001f \"")
}

///|
test "httpwg: string-generated - 0x20 in string" {
  let expected : Item = bare_item(SfString("   "))
  match parse_item("\"   \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\"   \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x21 in string" {
  let expected : Item = bare_item(SfString(" ! "))
  match parse_item("\" ! \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" ! \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x22 in string" {
  expect_parse_item_error("\" \" \"")
}

///|
test "httpwg: string-generated - 0x23 in string" {
  let expected : Item = bare_item(SfString(" # "))
  match parse_item("\" # \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" # \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x24 in string" {
  let expected : Item = bare_item(SfString(" $ "))
  match parse_item("\" $ \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" $ \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x25 in string" {
  let expected : Item = bare_item(SfString(" % "))
  match parse_item("\" % \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" % \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x26 in string" {
  let expected : Item = bare_item(SfString(" & "))
  match parse_item("\" & \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" & \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x27 in string" {
  let expected : Item = bare_item(SfString(" ' "))
  match parse_item("\" ' \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" ' \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x28 in string" {
  let expected : Item = bare_item(SfString(" ( "))
  match parse_item("\" ( \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" ( \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x29 in string" {
  let expected : Item = bare_item(SfString(" ) "))
  match parse_item("\" ) \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" ) \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x2a in string" {
  let expected : Item = bare_item(SfString(" * "))
  match parse_item("\" * \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" * \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x2b in string" {
  let expected : Item = bare_item(SfString(" + "))
  match parse_item("\" + \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" + \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x2c in string" {
  let expected : Item = bare_item(SfString(" , "))
  match parse_item("\" , \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" , \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x2d in string" {
  let expected : Item = bare_item(SfString(" - "))
  match parse_item("\" - \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" - \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x2e in string" {
  let expected : Item = bare_item(SfString(" . "))
  match parse_item("\" . \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" . \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x2f in string" {
  let expected : Item = bare_item(SfString(" / "))
  match parse_item("\" / \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" / \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x30 in string" {
  let expected : Item = bare_item(SfString(" 0 "))
  match parse_item("\" 0 \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" 0 \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x31 in string" {
  let expected : Item = bare_item(SfString(" 1 "))
  match parse_item("\" 1 \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" 1 \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x32 in string" {
  let expected : Item = bare_item(SfString(" 2 "))
  match parse_item("\" 2 \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" 2 \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x33 in string" {
  let expected : Item = bare_item(SfString(" 3 "))
  match parse_item("\" 3 \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" 3 \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x34 in string" {
  let expected : Item = bare_item(SfString(" 4 "))
  match parse_item("\" 4 \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" 4 \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x35 in string" {
  let expected : Item = bare_item(SfString(" 5 "))
  match parse_item("\" 5 \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" 5 \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x36 in string" {
  let expected : Item = bare_item(SfString(" 6 "))
  match parse_item("\" 6 \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" 6 \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x37 in string" {
  let expected : Item = bare_item(SfString(" 7 "))
  match parse_item("\" 7 \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" 7 \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x38 in string" {
  let expected : Item = bare_item(SfString(" 8 "))
  match parse_item("\" 8 \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" 8 \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x39 in string" {
  let expected : Item = bare_item(SfString(" 9 "))
  match parse_item("\" 9 \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" 9 \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x3a in string" {
  let expected : Item = bare_item(SfString(" : "))
  match parse_item("\" : \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" : \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x3b in string" {
  let expected : Item = bare_item(SfString(" ; "))
  match parse_item("\" ; \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" ; \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x3c in string" {
  let expected : Item = bare_item(SfString(" < "))
  match parse_item("\" < \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" < \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x3d in string" {
  let expected : Item = bare_item(SfString(" = "))
  match parse_item("\" = \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" = \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x3e in string" {
  let expected : Item = bare_item(SfString(" > "))
  match parse_item("\" > \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" > \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x3f in string" {
  let expected : Item = bare_item(SfString(" ? "))
  match parse_item("\" ? \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" ? \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x40 in string" {
  let expected : Item = bare_item(SfString(" @ "))
  match parse_item("\" @ \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" @ \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x41 in string" {
  let expected : Item = bare_item(SfString(" A "))
  match parse_item("\" A \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" A \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x42 in string" {
  let expected : Item = bare_item(SfString(" B "))
  match parse_item("\" B \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" B \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x43 in string" {
  let expected : Item = bare_item(SfString(" C "))
  match parse_item("\" C \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" C \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x44 in string" {
  let expected : Item = bare_item(SfString(" D "))
  match parse_item("\" D \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" D \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x45 in string" {
  let expected : Item = bare_item(SfString(" E "))
  match parse_item("\" E \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" E \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x46 in string" {
  let expected : Item = bare_item(SfString(" F "))
  match parse_item("\" F \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" F \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x47 in string" {
  let expected : Item = bare_item(SfString(" G "))
  match parse_item("\" G \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" G \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x48 in string" {
  let expected : Item = bare_item(SfString(" H "))
  match parse_item("\" H \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" H \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x49 in string" {
  let expected : Item = bare_item(SfString(" I "))
  match parse_item("\" I \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" I \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x4a in string" {
  let expected : Item = bare_item(SfString(" J "))
  match parse_item("\" J \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" J \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x4b in string" {
  let expected : Item = bare_item(SfString(" K "))
  match parse_item("\" K \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" K \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x4c in string" {
  let expected : Item = bare_item(SfString(" L "))
  match parse_item("\" L \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" L \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x4d in string" {
  let expected : Item = bare_item(SfString(" M "))
  match parse_item("\" M \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" M \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x4e in string" {
  let expected : Item = bare_item(SfString(" N "))
  match parse_item("\" N \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" N \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x4f in string" {
  let expected : Item = bare_item(SfString(" O "))
  match parse_item("\" O \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" O \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x50 in string" {
  let expected : Item = bare_item(SfString(" P "))
  match parse_item("\" P \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" P \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x51 in string" {
  let expected : Item = bare_item(SfString(" Q "))
  match parse_item("\" Q \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" Q \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x52 in string" {
  let expected : Item = bare_item(SfString(" R "))
  match parse_item("\" R \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" R \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x53 in string" {
  let expected : Item = bare_item(SfString(" S "))
  match parse_item("\" S \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" S \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x54 in string" {
  let expected : Item = bare_item(SfString(" T "))
  match parse_item("\" T \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" T \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x55 in string" {
  let expected : Item = bare_item(SfString(" U "))
  match parse_item("\" U \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" U \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x56 in string" {
  let expected : Item = bare_item(SfString(" V "))
  match parse_item("\" V \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" V \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x57 in string" {
  let expected : Item = bare_item(SfString(" W "))
  match parse_item("\" W \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" W \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x58 in string" {
  let expected : Item = bare_item(SfString(" X "))
  match parse_item("\" X \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" X \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x59 in string" {
  let expected : Item = bare_item(SfString(" Y "))
  match parse_item("\" Y \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" Y \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x5a in string" {
  let expected : Item = bare_item(SfString(" Z "))
  match parse_item("\" Z \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" Z \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x5b in string" {
  let expected : Item = bare_item(SfString(" [ "))
  match parse_item("\" [ \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" [ \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x5c in string" {
  expect_parse_item_error("\" \\ \"")
}

///|
test "httpwg: string-generated - 0x5d in string" {
  let expected : Item = bare_item(SfString(" ] "))
  match parse_item("\" ] \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" ] \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x5e in string" {
  let expected : Item = bare_item(SfString(" ^ "))
  match parse_item("\" ^ \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" ^ \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x5f in string" {
  let expected : Item = bare_item(SfString(" _ "))
  match parse_item("\" _ \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" _ \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x60 in string" {
  let expected : Item = bare_item(SfString(" ` "))
  match parse_item("\" ` \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" ` \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x61 in string" {
  let expected : Item = bare_item(SfString(" a "))
  match parse_item("\" a \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" a \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x62 in string" {
  let expected : Item = bare_item(SfString(" b "))
  match parse_item("\" b \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" b \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x63 in string" {
  let expected : Item = bare_item(SfString(" c "))
  match parse_item("\" c \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" c \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x64 in string" {
  let expected : Item = bare_item(SfString(" d "))
  match parse_item("\" d \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" d \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x65 in string" {
  let expected : Item = bare_item(SfString(" e "))
  match parse_item("\" e \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" e \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x66 in string" {
  let expected : Item = bare_item(SfString(" f "))
  match parse_item("\" f \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" f \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x67 in string" {
  let expected : Item = bare_item(SfString(" g "))
  match parse_item("\" g \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" g \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x68 in string" {
  let expected : Item = bare_item(SfString(" h "))
  match parse_item("\" h \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" h \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x69 in string" {
  let expected : Item = bare_item(SfString(" i "))
  match parse_item("\" i \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" i \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x6a in string" {
  let expected : Item = bare_item(SfString(" j "))
  match parse_item("\" j \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" j \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x6b in string" {
  let expected : Item = bare_item(SfString(" k "))
  match parse_item("\" k \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" k \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x6c in string" {
  let expected : Item = bare_item(SfString(" l "))
  match parse_item("\" l \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" l \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x6d in string" {
  let expected : Item = bare_item(SfString(" m "))
  match parse_item("\" m \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" m \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x6e in string" {
  let expected : Item = bare_item(SfString(" n "))
  match parse_item("\" n \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" n \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x6f in string" {
  let expected : Item = bare_item(SfString(" o "))
  match parse_item("\" o \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" o \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x70 in string" {
  let expected : Item = bare_item(SfString(" p "))
  match parse_item("\" p \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" p \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x71 in string" {
  let expected : Item = bare_item(SfString(" q "))
  match parse_item("\" q \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" q \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x72 in string" {
  let expected : Item = bare_item(SfString(" r "))
  match parse_item("\" r \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" r \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x73 in string" {
  let expected : Item = bare_item(SfString(" s "))
  match parse_item("\" s \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" s \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x74 in string" {
  let expected : Item = bare_item(SfString(" t "))
  match parse_item("\" t \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" t \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x75 in string" {
  let expected : Item = bare_item(SfString(" u "))
  match parse_item("\" u \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" u \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x76 in string" {
  let expected : Item = bare_item(SfString(" v "))
  match parse_item("\" v \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" v \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x77 in string" {
  let expected : Item = bare_item(SfString(" w "))
  match parse_item("\" w \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" w \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x78 in string" {
  let expected : Item = bare_item(SfString(" x "))
  match parse_item("\" x \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" x \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x79 in string" {
  let expected : Item = bare_item(SfString(" y "))
  match parse_item("\" y \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" y \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x7a in string" {
  let expected : Item = bare_item(SfString(" z "))
  match parse_item("\" z \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" z \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x7b in string" {
  let expected : Item = bare_item(SfString(" { "))
  match parse_item("\" { \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" { \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x7c in string" {
  let expected : Item = bare_item(SfString(" | "))
  match parse_item("\" | \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" | \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x7d in string" {
  let expected : Item = bare_item(SfString(" } "))
  match parse_item("\" } \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" } \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x7e in string" {
  let expected : Item = bare_item(SfString(" ~ "))
  match parse_item("\" ~ \"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\" ~ \"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x7f in string" {
  expect_parse_item_error("\" \u007f \"")
}

///|
test "httpwg: string-generated - Escaped 0x00 in string" {
  expect_parse_item_error("\"\\\u0000\"")
}

///|
test "httpwg: string-generated - Escaped 0x01 in string" {
  expect_parse_item_error("\"\\\u0001\"")
}

///|
test "httpwg: string-generated - Escaped 0x02 in string" {
  expect_parse_item_error("\"\\\u0002\"")
}

///|
test "httpwg: string-generated - Escaped 0x03 in string" {
  expect_parse_item_error("\"\\\u0003\"")
}

///|
test "httpwg: string-generated - Escaped 0x04 in string" {
  expect_parse_item_error("\"\\\u0004\"")
}

///|
test "httpwg: string-generated - Escaped 0x05 in string" {
  expect_parse_item_error("\"\\\u0005\"")
}

///|
test "httpwg: string-generated - Escaped 0x06 in string" {
  expect_parse_item_error("\"\\\u0006\"")
}

///|
test "httpwg: string-generated - Escaped 0x07 in string" {
  expect_parse_item_error("\"\\\u0007\"")
}

///|
test "httpwg: string-generated - Escaped 0x08 in string" {
  expect_parse_item_error("\"\\\u0008\"")
}

///|
test "httpwg: string-generated - Escaped 0x09 in string" {
  expect_parse_item_error("\"\\\t\"")
}

///|
test "httpwg: string-generated - Escaped 0x0a in string" {
  expect_parse_item_error("\"\\\n\"")
}

///|
test "httpwg: string-generated - Escaped 0x0b in string" {
  expect_parse_item_error("\"\\\u000b\"")
}

///|
test "httpwg: string-generated - Escaped 0x0c in string" {
  expect_parse_item_error("\"\\\u000c\"")
}

///|
test "httpwg: string-generated - Escaped 0x0d in string" {
  expect_parse_item_error("\"\\\r\"")
}

///|
test "httpwg: string-generated - Escaped 0x0e in string" {
  expect_parse_item_error("\"\\\u000e\"")
}

///|
test "httpwg: string-generated - Escaped 0x0f in string" {
  expect_parse_item_error("\"\\\u000f\"")
}

///|
test "httpwg: string-generated - Escaped 0x10 in string" {
  expect_parse_item_error("\"\\\u0010\"")
}

///|
test "httpwg: string-generated - Escaped 0x11 in string" {
  expect_parse_item_error("\"\\\u0011\"")
}

///|
test "httpwg: string-generated - Escaped 0x12 in string" {
  expect_parse_item_error("\"\\\u0012\"")
}

///|
test "httpwg: string-generated - Escaped 0x13 in string" {
  expect_parse_item_error("\"\\\u0013\"")
}

///|
test "httpwg: string-generated - Escaped 0x14 in string" {
  expect_parse_item_error("\"\\\u0014\"")
}

///|
test "httpwg: string-generated - Escaped 0x15 in string" {
  expect_parse_item_error("\"\\\u0015\"")
}

///|
test "httpwg: string-generated - Escaped 0x16 in string" {
  expect_parse_item_error("\"\\\u0016\"")
}

///|
test "httpwg: string-generated - Escaped 0x17 in string" {
  expect_parse_item_error("\"\\\u0017\"")
}

///|
test "httpwg: string-generated - Escaped 0x18 in string" {
  expect_parse_item_error("\"\\\u0018\"")
}

///|
test "httpwg: string-generated - Escaped 0x19 in string" {
  expect_parse_item_error("\"\\\u0019\"")
}

///|
test "httpwg: string-generated - Escaped 0x1a in string" {
  expect_parse_item_error("\"\\\u001a\"")
}

///|
test "httpwg: string-generated - Escaped 0x1b in string" {
  expect_parse_item_error("\"\\\u001b\"")
}

///|
test "httpwg: string-generated - Escaped 0x1c in string" {
  expect_parse_item_error("\"\\\u001c\"")
}

///|
test "httpwg: string-generated - Escaped 0x1d in string" {
  expect_parse_item_error("\"\\\u001d\"")
}

///|
test "httpwg: string-generated - Escaped 0x1e in string" {
  expect_parse_item_error("\"\\\u001e\"")
}

///|
test "httpwg: string-generated - Escaped 0x1f in string" {
  expect_parse_item_error("\"\\\u001f\"")
}

///|
test "httpwg: string-generated - Escaped 0x20 in string" {
  expect_parse_item_error("\"\\ \"")
}

///|
test "httpwg: string-generated - Escaped 0x21 in string" {
  expect_parse_item_error("\"\\!\"")
}

///|
test "httpwg: string-generated - Escaped 0x22 in string" {
  let expected : Item = bare_item(SfString("\""))
  match parse_item("\"\\\"\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\"\\\"\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - Escaped 0x23 in string" {
  expect_parse_item_error("\"\\#\"")
}

///|
test "httpwg: string-generated - Escaped 0x24 in string" {
  expect_parse_item_error("\"\\$\"")
}

///|
test "httpwg: string-generated - Escaped 0x25 in string" {
  expect_parse_item_error("\"\\%\"")
}

///|
test "httpwg: string-generated - Escaped 0x26 in string" {
  expect_parse_item_error("\"\\&\"")
}

///|
test "httpwg: string-generated - Escaped 0x27 in string" {
  expect_parse_item_error("\"\\'\"")
}

///|
test "httpwg: string-generated - Escaped 0x28 in string" {
  expect_parse_item_error("\"\\(\"")
}

///|
test "httpwg: string-generated - Escaped 0x29 in string" {
  expect_parse_item_error("\"\\)\"")
}

///|
test "httpwg: string-generated - Escaped 0x2a in string" {
  expect_parse_item_error("\"\\*\"")
}

///|
test "httpwg: string-generated - Escaped 0x2b in string" {
  expect_parse_item_error("\"\\+\"")
}

///|
test "httpwg: string-generated - Escaped 0x2c in string" {
  expect_parse_item_error("\"\\,\"")
}

///|
test "httpwg: string-generated - Escaped 0x2d in string" {
  expect_parse_item_error("\"\\-\"")
}

///|
test "httpwg: string-generated - Escaped 0x2e in string" {
  expect_parse_item_error("\"\\.\"")
}

///|
test "httpwg: string-generated - Escaped 0x2f in string" {
  expect_parse_item_error("\"\\/\"")
}

///|
test "httpwg: string-generated - Escaped 0x30 in string" {
  expect_parse_item_error("\"\\0\"")
}

///|
test "httpwg: string-generated - Escaped 0x31 in string" {
  expect_parse_item_error("\"\\1\"")
}

///|
test "httpwg: string-generated - Escaped 0x32 in string" {
  expect_parse_item_error("\"\\2\"")
}

///|
test "httpwg: string-generated - Escaped 0x33 in string" {
  expect_parse_item_error("\"\\3\"")
}

///|
test "httpwg: string-generated - Escaped 0x34 in string" {
  expect_parse_item_error("\"\\4\"")
}

///|
test "httpwg: string-generated - Escaped 0x35 in string" {
  expect_parse_item_error("\"\\5\"")
}

///|
test "httpwg: string-generated - Escaped 0x36 in string" {
  expect_parse_item_error("\"\\6\"")
}

///|
test "httpwg: string-generated - Escaped 0x37 in string" {
  expect_parse_item_error("\"\\7\"")
}

///|
test "httpwg: string-generated - Escaped 0x38 in string" {
  expect_parse_item_error("\"\\8\"")
}

///|
test "httpwg: string-generated - Escaped 0x39 in string" {
  expect_parse_item_error("\"\\9\"")
}

///|
test "httpwg: string-generated - Escaped 0x3a in string" {
  expect_parse_item_error("\"\\:\"")
}

///|
test "httpwg: string-generated - Escaped 0x3b in string" {
  expect_parse_item_error("\"\\;\"")
}

///|
test "httpwg: string-generated - Escaped 0x3c in string" {
  expect_parse_item_error("\"\\<\"")
}

///|
test "httpwg: string-generated - Escaped 0x3d in string" {
  expect_parse_item_error("\"\\=\"")
}

///|
test "httpwg: string-generated - Escaped 0x3e in string" {
  expect_parse_item_error("\"\\>\"")
}

///|
test "httpwg: string-generated - Escaped 0x3f in string" {
  expect_parse_item_error("\"\\?\"")
}

///|
test "httpwg: string-generated - Escaped 0x40 in string" {
  expect_parse_item_error("\"\\@\"")
}

///|
test "httpwg: string-generated - Escaped 0x41 in string" {
  expect_parse_item_error("\"\\A\"")
}

///|
test "httpwg: string-generated - Escaped 0x42 in string" {
  expect_parse_item_error("\"\\B\"")
}

///|
test "httpwg: string-generated - Escaped 0x43 in string" {
  expect_parse_item_error("\"\\C\"")
}

///|
test "httpwg: string-generated - Escaped 0x44 in string" {
  expect_parse_item_error("\"\\D\"")
}

///|
test "httpwg: string-generated - Escaped 0x45 in string" {
  expect_parse_item_error("\"\\E\"")
}

///|
test "httpwg: string-generated - Escaped 0x46 in string" {
  expect_parse_item_error("\"\\F\"")
}

///|
test "httpwg: string-generated - Escaped 0x47 in string" {
  expect_parse_item_error("\"\\G\"")
}

///|
test "httpwg: string-generated - Escaped 0x48 in string" {
  expect_parse_item_error("\"\\H\"")
}

///|
test "httpwg: string-generated - Escaped 0x49 in string" {
  expect_parse_item_error("\"\\I\"")
}

///|
test "httpwg: string-generated - Escaped 0x4a in string" {
  expect_parse_item_error("\"\\J\"")
}

///|
test "httpwg: string-generated - Escaped 0x4b in string" {
  expect_parse_item_error("\"\\K\"")
}

///|
test "httpwg: string-generated - Escaped 0x4c in string" {
  expect_parse_item_error("\"\\L\"")
}

///|
test "httpwg: string-generated - Escaped 0x4d in string" {
  expect_parse_item_error("\"\\M\"")
}

///|
test "httpwg: string-generated - Escaped 0x4e in string" {
  expect_parse_item_error("\"\\N\"")
}

///|
test "httpwg: string-generated - Escaped 0x4f in string" {
  expect_parse_item_error("\"\\O\"")
}

///|
test "httpwg: string-generated - Escaped 0x50 in string" {
  expect_parse_item_error("\"\\P\"")
}

///|
test "httpwg: string-generated - Escaped 0x51 in string" {
  expect_parse_item_error("\"\\Q\"")
}

///|
test "httpwg: string-generated - Escaped 0x52 in string" {
  expect_parse_item_error("\"\\R\"")
}

///|
test "httpwg: string-generated - Escaped 0x53 in string" {
  expect_parse_item_error("\"\\S\"")
}

///|
test "httpwg: string-generated - Escaped 0x54 in string" {
  expect_parse_item_error("\"\\T\"")
}

///|
test "httpwg: string-generated - Escaped 0x55 in string" {
  expect_parse_item_error("\"\\U\"")
}

///|
test "httpwg: string-generated - Escaped 0x56 in string" {
  expect_parse_item_error("\"\\V\"")
}

///|
test "httpwg: string-generated - Escaped 0x57 in string" {
  expect_parse_item_error("\"\\W\"")
}

///|
test "httpwg: string-generated - Escaped 0x58 in string" {
  expect_parse_item_error("\"\\X\"")
}

///|
test "httpwg: string-generated - Escaped 0x59 in string" {
  expect_parse_item_error("\"\\Y\"")
}

///|
test "httpwg: string-generated - Escaped 0x5a in string" {
  expect_parse_item_error("\"\\Z\"")
}

///|
test "httpwg: string-generated - Escaped 0x5b in string" {
  expect_parse_item_error("\"\\[\"")
}

///|
test "httpwg: string-generated - Escaped 0x5c in string" {
  let expected : Item = bare_item(SfString("\\"))
  match parse_item("\"\\\\\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\"\\\\\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - Escaped 0x5d in string" {
  expect_parse_item_error("\"\\]\"")
}

///|
test "httpwg: string-generated - Escaped 0x5e in string" {
  expect_parse_item_error("\"\\^\"")
}

///|
test "httpwg: string-generated - Escaped 0x5f in string" {
  expect_parse_item_error("\"\\_\"")
}

///|
test "httpwg: string-generated - Escaped 0x60 in string" {
  expect_parse_item_error("\"\\`\"")
}

///|
test "httpwg: string-generated - Escaped 0x61 in string" {
  expect_parse_item_error("\"\\a\"")
}

///|
test "httpwg: string-generated - Escaped 0x62 in string" {
  expect_parse_item_error("\"\\b\"")
}

///|
test "httpwg: string-generated - Escaped 0x63 in string" {
  expect_parse_item_error("\"\\c\"")
}

///|
test "httpwg: string-generated - Escaped 0x64 in string" {
  expect_parse_item_error("\"\\d\"")
}

///|
test "httpwg: string-generated - Escaped 0x65 in string" {
  expect_parse_item_error("\"\\e\"")
}

///|
test "httpwg: string-generated - Escaped 0x66 in string" {
  expect_parse_item_error("\"\\f\"")
}

///|
test "httpwg: string-generated - Escaped 0x67 in string" {
  expect_parse_item_error("\"\\g\"")
}

///|
test "httpwg: string-generated - Escaped 0x68 in string" {
  expect_parse_item_error("\"\\h\"")
}

///|
test "httpwg: string-generated - Escaped 0x69 in string" {
  expect_parse_item_error("\"\\i\"")
}

///|
test "httpwg: string-generated - Escaped 0x6a in string" {
  expect_parse_item_error("\"\\j\"")
}

///|
test "httpwg: string-generated - Escaped 0x6b in string" {
  expect_parse_item_error("\"\\k\"")
}

///|
test "httpwg: string-generated - Escaped 0x6c in string" {
  expect_parse_item_error("\"\\l\"")
}

///|
test "httpwg: string-generated - Escaped 0x6d in string" {
  expect_parse_item_error("\"\\m\"")
}

///|
test "httpwg: string-generated - Escaped 0x6e in string" {
  expect_parse_item_error("\"\\n\"")
}

///|
test "httpwg: string-generated - Escaped 0x6f in string" {
  expect_parse_item_error("\"\\o\"")
}

///|
test "httpwg: string-generated - Escaped 0x70 in string" {
  expect_parse_item_error("\"\\p\"")
}

///|
test "httpwg: string-generated - Escaped 0x71 in string" {
  expect_parse_item_error("\"\\q\"")
}

///|
test "httpwg: string-generated - Escaped 0x72 in string" {
  expect_parse_item_error("\"\\r\"")
}

///|
test "httpwg: string-generated - Escaped 0x73 in string" {
  expect_parse_item_error("\"\\s\"")
}

///|
test "httpwg: string-generated - Escaped 0x74 in string" {
  expect_parse_item_error("\"\\t\"")
}

///|
test "httpwg: string-generated - Escaped 0x75 in string" {
  expect_parse_item_error("\"\\u\"")
}

///|
test "httpwg: string-generated - Escaped 0x76 in string" {
  expect_parse_item_error("\"\\v\"")
}

///|
test "httpwg: string-generated - Escaped 0x77 in string" {
  expect_parse_item_error("\"\\w\"")
}

///|
test "httpwg: string-generated - Escaped 0x78 in string" {
  expect_parse_item_error("\"\\x\"")
}

///|
test "httpwg: string-generated - Escaped 0x79 in string" {
  expect_parse_item_error("\"\\y\"")
}

///|
test "httpwg: string-generated - Escaped 0x7a in string" {
  expect_parse_item_error("\"\\z\"")
}

///|
test "httpwg: string-generated - Escaped 0x7b in string" {
  expect_parse_item_error("\"\\{\"")
}

///|
test "httpwg: string-generated - Escaped 0x7c in string" {
  expect_parse_item_error("\"\\|\"")
}

///|
test "httpwg: string-generated - Escaped 0x7d in string" {
  expect_parse_item_error("\"\\}\"")
}

///|
test "httpwg: string-generated - Escaped 0x7e in string" {
  expect_parse_item_error("\"\\~\"")
}

///|
test "httpwg: string-generated - Escaped 0x7f in string" {
  expect_parse_item_error("\"\\\u007f\"")
}
