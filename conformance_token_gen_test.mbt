///| Conformance test vectors generated from httpwg/structured-field-tests

///| BSD 3-Clause License - IETF Trust

///|
test "httpwg: token-generated - 0x00 in token" {
  expect_parse_item_error("a\u0000a")
}

///|
test "httpwg: token-generated - 0x01 in token" {
  expect_parse_item_error("a\u0001a")
}

///|
test "httpwg: token-generated - 0x02 in token" {
  expect_parse_item_error("a\u0002a")
}

///|
test "httpwg: token-generated - 0x03 in token" {
  expect_parse_item_error("a\u0003a")
}

///|
test "httpwg: token-generated - 0x04 in token" {
  expect_parse_item_error("a\u0004a")
}

///|
test "httpwg: token-generated - 0x05 in token" {
  expect_parse_item_error("a\u0005a")
}

///|
test "httpwg: token-generated - 0x06 in token" {
  expect_parse_item_error("a\u0006a")
}

///|
test "httpwg: token-generated - 0x07 in token" {
  expect_parse_item_error("a\u0007a")
}

///|
test "httpwg: token-generated - 0x08 in token" {
  expect_parse_item_error("a\u0008a")
}

///|
test "httpwg: token-generated - 0x09 in token" {
  expect_parse_item_error("a\ta")
}

///|
test "httpwg: token-generated - 0x0a in token" {
  expect_parse_item_error("a\na")
}

///|
test "httpwg: token-generated - 0x0b in token" {
  expect_parse_item_error("a\u000ba")
}

///|
test "httpwg: token-generated - 0x0c in token" {
  expect_parse_item_error("a\u000ca")
}

///|
test "httpwg: token-generated - 0x0d in token" {
  expect_parse_item_error("a\ra")
}

///|
test "httpwg: token-generated - 0x0e in token" {
  expect_parse_item_error("a\u000ea")
}

///|
test "httpwg: token-generated - 0x0f in token" {
  expect_parse_item_error("a\u000fa")
}

///|
test "httpwg: token-generated - 0x10 in token" {
  expect_parse_item_error("a\u0010a")
}

///|
test "httpwg: token-generated - 0x11 in token" {
  expect_parse_item_error("a\u0011a")
}

///|
test "httpwg: token-generated - 0x12 in token" {
  expect_parse_item_error("a\u0012a")
}

///|
test "httpwg: token-generated - 0x13 in token" {
  expect_parse_item_error("a\u0013a")
}

///|
test "httpwg: token-generated - 0x14 in token" {
  expect_parse_item_error("a\u0014a")
}

///|
test "httpwg: token-generated - 0x15 in token" {
  expect_parse_item_error("a\u0015a")
}

///|
test "httpwg: token-generated - 0x16 in token" {
  expect_parse_item_error("a\u0016a")
}

///|
test "httpwg: token-generated - 0x17 in token" {
  expect_parse_item_error("a\u0017a")
}

///|
test "httpwg: token-generated - 0x18 in token" {
  expect_parse_item_error("a\u0018a")
}

///|
test "httpwg: token-generated - 0x19 in token" {
  expect_parse_item_error("a\u0019a")
}

///|
test "httpwg: token-generated - 0x1a in token" {
  expect_parse_item_error("a\u001aa")
}

///|
test "httpwg: token-generated - 0x1b in token" {
  expect_parse_item_error("a\u001ba")
}

///|
test "httpwg: token-generated - 0x1c in token" {
  expect_parse_item_error("a\u001ca")
}

///|
test "httpwg: token-generated - 0x1d in token" {
  expect_parse_item_error("a\u001da")
}

///|
test "httpwg: token-generated - 0x1e in token" {
  expect_parse_item_error("a\u001ea")
}

///|
test "httpwg: token-generated - 0x1f in token" {
  expect_parse_item_error("a\u001fa")
}

///|
test "httpwg: token-generated - 0x20 in token" {
  expect_parse_item_error("a a")
}

///|
test "httpwg: token-generated - 0x21 in token" {
  let expected : Item = { value: SfToken("a!a"), parameters: [] }
  match parse_item("a!a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a!a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x22 in token" {
  expect_parse_item_error("a\"a")
}

///|
test "httpwg: token-generated - 0x23 in token" {
  let expected : Item = { value: SfToken("a#a"), parameters: [] }
  match parse_item("a#a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a#a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x24 in token" {
  let expected : Item = { value: SfToken("a$a"), parameters: [] }
  match parse_item("a$a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a$a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x25 in token" {
  let expected : Item = { value: SfToken("a%a"), parameters: [] }
  match parse_item("a%a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a%a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x26 in token" {
  let expected : Item = { value: SfToken("a&a"), parameters: [] }
  match parse_item("a&a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a&a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x27 in token" {
  let expected : Item = { value: SfToken("a'a"), parameters: [] }
  match parse_item("a'a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a'a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x28 in token" {
  expect_parse_item_error("a(a")
}

///|
test "httpwg: token-generated - 0x29 in token" {
  expect_parse_item_error("a)a")
}

///|
test "httpwg: token-generated - 0x2a in token" {
  let expected : Item = { value: SfToken("a*a"), parameters: [] }
  match parse_item("a*a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a*a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x2b in token" {
  let expected : Item = { value: SfToken("a+a"), parameters: [] }
  match parse_item("a+a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a+a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x2c in token" {
  expect_parse_item_error("a,a")
}

///|
test "httpwg: token-generated - 0x2d in token" {
  let expected : Item = { value: SfToken("a-a"), parameters: [] }
  match parse_item("a-a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a-a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x2e in token" {
  let expected : Item = { value: SfToken("a.a"), parameters: [] }
  match parse_item("a.a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a.a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x2f in token" {
  let expected : Item = { value: SfToken("a/a"), parameters: [] }
  match parse_item("a/a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a/a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x30 in token" {
  let expected : Item = { value: SfToken("a0a"), parameters: [] }
  match parse_item("a0a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a0a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x31 in token" {
  let expected : Item = { value: SfToken("a1a"), parameters: [] }
  match parse_item("a1a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a1a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x32 in token" {
  let expected : Item = { value: SfToken("a2a"), parameters: [] }
  match parse_item("a2a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a2a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x33 in token" {
  let expected : Item = { value: SfToken("a3a"), parameters: [] }
  match parse_item("a3a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a3a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x34 in token" {
  let expected : Item = { value: SfToken("a4a"), parameters: [] }
  match parse_item("a4a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a4a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x35 in token" {
  let expected : Item = { value: SfToken("a5a"), parameters: [] }
  match parse_item("a5a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a5a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x36 in token" {
  let expected : Item = { value: SfToken("a6a"), parameters: [] }
  match parse_item("a6a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a6a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x37 in token" {
  let expected : Item = { value: SfToken("a7a"), parameters: [] }
  match parse_item("a7a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a7a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x38 in token" {
  let expected : Item = { value: SfToken("a8a"), parameters: [] }
  match parse_item("a8a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a8a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x39 in token" {
  let expected : Item = { value: SfToken("a9a"), parameters: [] }
  match parse_item("a9a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a9a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x3a in token" {
  let expected : Item = { value: SfToken("a:a"), parameters: [] }
  match parse_item("a:a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a:a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x3b in token" {
  let expected : Item = {
    value: SfToken("a"),
    parameters: [{ key: "a", value: SfBoolean(true) }],
  }
  match parse_item("a;a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a;a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x3c in token" {
  expect_parse_item_error("a<a")
}

///|
test "httpwg: token-generated - 0x3d in token" {
  expect_parse_item_error("a=a")
}

///|
test "httpwg: token-generated - 0x3e in token" {
  expect_parse_item_error("a>a")
}

///|
test "httpwg: token-generated - 0x3f in token" {
  expect_parse_item_error("a?a")
}

///|
test "httpwg: token-generated - 0x40 in token" {
  expect_parse_item_error("a@a")
}

///|
test "httpwg: token-generated - 0x41 in token" {
  let expected : Item = { value: SfToken("aAa"), parameters: [] }
  match parse_item("aAa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aAa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x42 in token" {
  let expected : Item = { value: SfToken("aBa"), parameters: [] }
  match parse_item("aBa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aBa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x43 in token" {
  let expected : Item = { value: SfToken("aCa"), parameters: [] }
  match parse_item("aCa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aCa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x44 in token" {
  let expected : Item = { value: SfToken("aDa"), parameters: [] }
  match parse_item("aDa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aDa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x45 in token" {
  let expected : Item = { value: SfToken("aEa"), parameters: [] }
  match parse_item("aEa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aEa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x46 in token" {
  let expected : Item = { value: SfToken("aFa"), parameters: [] }
  match parse_item("aFa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aFa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x47 in token" {
  let expected : Item = { value: SfToken("aGa"), parameters: [] }
  match parse_item("aGa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aGa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x48 in token" {
  let expected : Item = { value: SfToken("aHa"), parameters: [] }
  match parse_item("aHa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aHa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x49 in token" {
  let expected : Item = { value: SfToken("aIa"), parameters: [] }
  match parse_item("aIa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aIa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4a in token" {
  let expected : Item = { value: SfToken("aJa"), parameters: [] }
  match parse_item("aJa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aJa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4b in token" {
  let expected : Item = { value: SfToken("aKa"), parameters: [] }
  match parse_item("aKa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aKa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4c in token" {
  let expected : Item = { value: SfToken("aLa"), parameters: [] }
  match parse_item("aLa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aLa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4d in token" {
  let expected : Item = { value: SfToken("aMa"), parameters: [] }
  match parse_item("aMa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aMa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4e in token" {
  let expected : Item = { value: SfToken("aNa"), parameters: [] }
  match parse_item("aNa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aNa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4f in token" {
  let expected : Item = { value: SfToken("aOa"), parameters: [] }
  match parse_item("aOa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aOa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x50 in token" {
  let expected : Item = { value: SfToken("aPa"), parameters: [] }
  match parse_item("aPa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aPa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x51 in token" {
  let expected : Item = { value: SfToken("aQa"), parameters: [] }
  match parse_item("aQa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aQa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x52 in token" {
  let expected : Item = { value: SfToken("aRa"), parameters: [] }
  match parse_item("aRa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aRa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x53 in token" {
  let expected : Item = { value: SfToken("aSa"), parameters: [] }
  match parse_item("aSa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aSa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x54 in token" {
  let expected : Item = { value: SfToken("aTa"), parameters: [] }
  match parse_item("aTa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aTa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x55 in token" {
  let expected : Item = { value: SfToken("aUa"), parameters: [] }
  match parse_item("aUa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aUa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x56 in token" {
  let expected : Item = { value: SfToken("aVa"), parameters: [] }
  match parse_item("aVa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aVa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x57 in token" {
  let expected : Item = { value: SfToken("aWa"), parameters: [] }
  match parse_item("aWa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aWa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x58 in token" {
  let expected : Item = { value: SfToken("aXa"), parameters: [] }
  match parse_item("aXa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aXa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x59 in token" {
  let expected : Item = { value: SfToken("aYa"), parameters: [] }
  match parse_item("aYa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aYa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x5a in token" {
  let expected : Item = { value: SfToken("aZa"), parameters: [] }
  match parse_item("aZa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aZa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x5b in token" {
  expect_parse_item_error("a[a")
}

///|
test "httpwg: token-generated - 0x5c in token" {
  expect_parse_item_error("a\\a")
}

///|
test "httpwg: token-generated - 0x5d in token" {
  expect_parse_item_error("a]a")
}

///|
test "httpwg: token-generated - 0x5e in token" {
  let expected : Item = { value: SfToken("a^a"), parameters: [] }
  match parse_item("a^a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a^a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x5f in token" {
  let expected : Item = { value: SfToken("a_a"), parameters: [] }
  match parse_item("a_a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a_a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x60 in token" {
  let expected : Item = { value: SfToken("a`a"), parameters: [] }
  match parse_item("a`a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a`a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x61 in token" {
  let expected : Item = { value: SfToken("aaa"), parameters: [] }
  match parse_item("aaa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aaa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x62 in token" {
  let expected : Item = { value: SfToken("aba"), parameters: [] }
  match parse_item("aba") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aba")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x63 in token" {
  let expected : Item = { value: SfToken("aca"), parameters: [] }
  match parse_item("aca") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aca")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x64 in token" {
  let expected : Item = { value: SfToken("ada"), parameters: [] }
  match parse_item("ada") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ada")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x65 in token" {
  let expected : Item = { value: SfToken("aea"), parameters: [] }
  match parse_item("aea") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aea")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x66 in token" {
  let expected : Item = { value: SfToken("afa"), parameters: [] }
  match parse_item("afa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "afa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x67 in token" {
  let expected : Item = { value: SfToken("aga"), parameters: [] }
  match parse_item("aga") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aga")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x68 in token" {
  let expected : Item = { value: SfToken("aha"), parameters: [] }
  match parse_item("aha") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aha")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x69 in token" {
  let expected : Item = { value: SfToken("aia"), parameters: [] }
  match parse_item("aia") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aia")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6a in token" {
  let expected : Item = { value: SfToken("aja"), parameters: [] }
  match parse_item("aja") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aja")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6b in token" {
  let expected : Item = { value: SfToken("aka"), parameters: [] }
  match parse_item("aka") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aka")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6c in token" {
  let expected : Item = { value: SfToken("ala"), parameters: [] }
  match parse_item("ala") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ala")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6d in token" {
  let expected : Item = { value: SfToken("ama"), parameters: [] }
  match parse_item("ama") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ama")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6e in token" {
  let expected : Item = { value: SfToken("ana"), parameters: [] }
  match parse_item("ana") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ana")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6f in token" {
  let expected : Item = { value: SfToken("aoa"), parameters: [] }
  match parse_item("aoa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aoa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x70 in token" {
  let expected : Item = { value: SfToken("apa"), parameters: [] }
  match parse_item("apa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "apa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x71 in token" {
  let expected : Item = { value: SfToken("aqa"), parameters: [] }
  match parse_item("aqa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aqa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x72 in token" {
  let expected : Item = { value: SfToken("ara"), parameters: [] }
  match parse_item("ara") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ara")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x73 in token" {
  let expected : Item = { value: SfToken("asa"), parameters: [] }
  match parse_item("asa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "asa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x74 in token" {
  let expected : Item = { value: SfToken("ata"), parameters: [] }
  match parse_item("ata") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ata")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x75 in token" {
  let expected : Item = { value: SfToken("aua"), parameters: [] }
  match parse_item("aua") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aua")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x76 in token" {
  let expected : Item = { value: SfToken("ava"), parameters: [] }
  match parse_item("ava") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ava")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x77 in token" {
  let expected : Item = { value: SfToken("awa"), parameters: [] }
  match parse_item("awa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "awa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x78 in token" {
  let expected : Item = { value: SfToken("axa"), parameters: [] }
  match parse_item("axa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "axa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x79 in token" {
  let expected : Item = { value: SfToken("aya"), parameters: [] }
  match parse_item("aya") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aya")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x7a in token" {
  let expected : Item = { value: SfToken("aza"), parameters: [] }
  match parse_item("aza") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aza")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x7b in token" {
  expect_parse_item_error("a{a")
}

///|
test "httpwg: token-generated - 0x7c in token" {
  let expected : Item = { value: SfToken("a|a"), parameters: [] }
  match parse_item("a|a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a|a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x7d in token" {
  expect_parse_item_error("a}a")
}

///|
test "httpwg: token-generated - 0x7e in token" {
  let expected : Item = { value: SfToken("a~a"), parameters: [] }
  match parse_item("a~a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a~a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x7f in token" {
  expect_parse_item_error("a\u007fa")
}

///|
test "httpwg: token-generated - 0x00 starting a token" {
  expect_parse_item_error("\u0000a")
}

///|
test "httpwg: token-generated - 0x01 starting a token" {
  expect_parse_item_error("\u0001a")
}

///|
test "httpwg: token-generated - 0x02 starting a token" {
  expect_parse_item_error("\u0002a")
}

///|
test "httpwg: token-generated - 0x03 starting a token" {
  expect_parse_item_error("\u0003a")
}

///|
test "httpwg: token-generated - 0x04 starting a token" {
  expect_parse_item_error("\u0004a")
}

///|
test "httpwg: token-generated - 0x05 starting a token" {
  expect_parse_item_error("\u0005a")
}

///|
test "httpwg: token-generated - 0x06 starting a token" {
  expect_parse_item_error("\u0006a")
}

///|
test "httpwg: token-generated - 0x07 starting a token" {
  expect_parse_item_error("\u0007a")
}

///|
test "httpwg: token-generated - 0x08 starting a token" {
  expect_parse_item_error("\u0008a")
}

///|
test "httpwg: token-generated - 0x09 starting a token" {
  expect_parse_item_error("\ta")
}

///|
test "httpwg: token-generated - 0x0a starting a token" {
  expect_parse_item_error("\na")
}

///|
test "httpwg: token-generated - 0x0b starting a token" {
  expect_parse_item_error("\u000ba")
}

///|
test "httpwg: token-generated - 0x0c starting a token" {
  expect_parse_item_error("\u000ca")
}

///|
test "httpwg: token-generated - 0x0d starting a token" {
  expect_parse_item_error("\ra")
}

///|
test "httpwg: token-generated - 0x0e starting a token" {
  expect_parse_item_error("\u000ea")
}

///|
test "httpwg: token-generated - 0x0f starting a token" {
  expect_parse_item_error("\u000fa")
}

///|
test "httpwg: token-generated - 0x10 starting a token" {
  expect_parse_item_error("\u0010a")
}

///|
test "httpwg: token-generated - 0x11 starting a token" {
  expect_parse_item_error("\u0011a")
}

///|
test "httpwg: token-generated - 0x12 starting a token" {
  expect_parse_item_error("\u0012a")
}

///|
test "httpwg: token-generated - 0x13 starting a token" {
  expect_parse_item_error("\u0013a")
}

///|
test "httpwg: token-generated - 0x14 starting a token" {
  expect_parse_item_error("\u0014a")
}

///|
test "httpwg: token-generated - 0x15 starting a token" {
  expect_parse_item_error("\u0015a")
}

///|
test "httpwg: token-generated - 0x16 starting a token" {
  expect_parse_item_error("\u0016a")
}

///|
test "httpwg: token-generated - 0x17 starting a token" {
  expect_parse_item_error("\u0017a")
}

///|
test "httpwg: token-generated - 0x18 starting a token" {
  expect_parse_item_error("\u0018a")
}

///|
test "httpwg: token-generated - 0x19 starting a token" {
  expect_parse_item_error("\u0019a")
}

///|
test "httpwg: token-generated - 0x1a starting a token" {
  expect_parse_item_error("\u001aa")
}

///|
test "httpwg: token-generated - 0x1b starting a token" {
  expect_parse_item_error("\u001ba")
}

///|
test "httpwg: token-generated - 0x1c starting a token" {
  expect_parse_item_error("\u001ca")
}

///|
test "httpwg: token-generated - 0x1d starting a token" {
  expect_parse_item_error("\u001da")
}

///|
test "httpwg: token-generated - 0x1e starting a token" {
  expect_parse_item_error("\u001ea")
}

///|
test "httpwg: token-generated - 0x1f starting a token" {
  expect_parse_item_error("\u001fa")
}

///|
test "httpwg: token-generated - 0x20 starting a token" {
  let expected : Item = { value: SfToken("a"), parameters: [] }
  match parse_item(" a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x21 starting a token" {
  expect_parse_item_error("!a")
}

///|
test "httpwg: token-generated - 0x22 starting a token" {
  expect_parse_item_error("\"a")
}

///|
test "httpwg: token-generated - 0x23 starting a token" {
  expect_parse_item_error("#a")
}

///|
test "httpwg: token-generated - 0x24 starting a token" {
  expect_parse_item_error("$a")
}

///|
test "httpwg: token-generated - 0x25 starting a token" {
  expect_parse_item_error("%a")
}

///|
test "httpwg: token-generated - 0x26 starting a token" {
  expect_parse_item_error("&a")
}

///|
test "httpwg: token-generated - 0x27 starting a token" {
  expect_parse_item_error("'a")
}

///|
test "httpwg: token-generated - 0x28 starting a token" {
  expect_parse_item_error("(a")
}

///|
test "httpwg: token-generated - 0x29 starting a token" {
  expect_parse_item_error(")a")
}

///|
test "httpwg: token-generated - 0x2a starting a token" {
  let expected : Item = { value: SfToken("*a"), parameters: [] }
  match parse_item("*a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "*a")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x2b starting a token" {
  expect_parse_item_error("+a")
}

///|
test "httpwg: token-generated - 0x2c starting a token" {
  expect_parse_item_error(",a")
}

///|
test "httpwg: token-generated - 0x2d starting a token" {
  expect_parse_item_error("-a")
}

///|
test "httpwg: token-generated - 0x2e starting a token" {
  expect_parse_item_error(".a")
}

///|
test "httpwg: token-generated - 0x2f starting a token" {
  expect_parse_item_error("/a")
}

///|
test "httpwg: token-generated - 0x30 starting a token" {
  expect_parse_item_error("0a")
}

///|
test "httpwg: token-generated - 0x31 starting a token" {
  expect_parse_item_error("1a")
}

///|
test "httpwg: token-generated - 0x32 starting a token" {
  expect_parse_item_error("2a")
}

///|
test "httpwg: token-generated - 0x33 starting a token" {
  expect_parse_item_error("3a")
}

///|
test "httpwg: token-generated - 0x34 starting a token" {
  expect_parse_item_error("4a")
}

///|
test "httpwg: token-generated - 0x35 starting a token" {
  expect_parse_item_error("5a")
}

///|
test "httpwg: token-generated - 0x36 starting a token" {
  expect_parse_item_error("6a")
}

///|
test "httpwg: token-generated - 0x37 starting a token" {
  expect_parse_item_error("7a")
}

///|
test "httpwg: token-generated - 0x38 starting a token" {
  expect_parse_item_error("8a")
}

///|
test "httpwg: token-generated - 0x39 starting a token" {
  expect_parse_item_error("9a")
}

///|
test "httpwg: token-generated - 0x3a starting a token" {
  expect_parse_item_error(":a")
}

///|
test "httpwg: token-generated - 0x3b starting a token" {
  expect_parse_item_error(";a")
}

///|
test "httpwg: token-generated - 0x3c starting a token" {
  expect_parse_item_error("<a")
}

///|
test "httpwg: token-generated - 0x3d starting a token" {
  expect_parse_item_error("=a")
}

///|
test "httpwg: token-generated - 0x3e starting a token" {
  expect_parse_item_error(">a")
}

///|
test "httpwg: token-generated - 0x3f starting a token" {
  expect_parse_item_error("?a")
}

///|
test "httpwg: token-generated - 0x40 starting a token" {
  expect_parse_item_error("@a")
}

///|
test "httpwg: token-generated - 0x41 starting a token" {
  let expected : Item = { value: SfToken("Aa"), parameters: [] }
  match parse_item("Aa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Aa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x42 starting a token" {
  let expected : Item = { value: SfToken("Ba"), parameters: [] }
  match parse_item("Ba") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ba")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x43 starting a token" {
  let expected : Item = { value: SfToken("Ca"), parameters: [] }
  match parse_item("Ca") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ca")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x44 starting a token" {
  let expected : Item = { value: SfToken("Da"), parameters: [] }
  match parse_item("Da") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Da")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x45 starting a token" {
  let expected : Item = { value: SfToken("Ea"), parameters: [] }
  match parse_item("Ea") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ea")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x46 starting a token" {
  let expected : Item = { value: SfToken("Fa"), parameters: [] }
  match parse_item("Fa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Fa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x47 starting a token" {
  let expected : Item = { value: SfToken("Ga"), parameters: [] }
  match parse_item("Ga") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ga")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x48 starting a token" {
  let expected : Item = { value: SfToken("Ha"), parameters: [] }
  match parse_item("Ha") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ha")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x49 starting a token" {
  let expected : Item = { value: SfToken("Ia"), parameters: [] }
  match parse_item("Ia") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ia")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4a starting a token" {
  let expected : Item = { value: SfToken("Ja"), parameters: [] }
  match parse_item("Ja") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ja")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4b starting a token" {
  let expected : Item = { value: SfToken("Ka"), parameters: [] }
  match parse_item("Ka") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ka")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4c starting a token" {
  let expected : Item = { value: SfToken("La"), parameters: [] }
  match parse_item("La") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "La")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4d starting a token" {
  let expected : Item = { value: SfToken("Ma"), parameters: [] }
  match parse_item("Ma") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ma")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4e starting a token" {
  let expected : Item = { value: SfToken("Na"), parameters: [] }
  match parse_item("Na") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Na")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4f starting a token" {
  let expected : Item = { value: SfToken("Oa"), parameters: [] }
  match parse_item("Oa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Oa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x50 starting a token" {
  let expected : Item = { value: SfToken("Pa"), parameters: [] }
  match parse_item("Pa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Pa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x51 starting a token" {
  let expected : Item = { value: SfToken("Qa"), parameters: [] }
  match parse_item("Qa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Qa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x52 starting a token" {
  let expected : Item = { value: SfToken("Ra"), parameters: [] }
  match parse_item("Ra") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ra")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x53 starting a token" {
  let expected : Item = { value: SfToken("Sa"), parameters: [] }
  match parse_item("Sa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Sa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x54 starting a token" {
  let expected : Item = { value: SfToken("Ta"), parameters: [] }
  match parse_item("Ta") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ta")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x55 starting a token" {
  let expected : Item = { value: SfToken("Ua"), parameters: [] }
  match parse_item("Ua") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ua")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x56 starting a token" {
  let expected : Item = { value: SfToken("Va"), parameters: [] }
  match parse_item("Va") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Va")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x57 starting a token" {
  let expected : Item = { value: SfToken("Wa"), parameters: [] }
  match parse_item("Wa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Wa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x58 starting a token" {
  let expected : Item = { value: SfToken("Xa"), parameters: [] }
  match parse_item("Xa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Xa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x59 starting a token" {
  let expected : Item = { value: SfToken("Ya"), parameters: [] }
  match parse_item("Ya") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Ya")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x5a starting a token" {
  let expected : Item = { value: SfToken("Za"), parameters: [] }
  match parse_item("Za") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "Za")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x5b starting a token" {
  expect_parse_item_error("[a")
}

///|
test "httpwg: token-generated - 0x5c starting a token" {
  expect_parse_item_error("\\a")
}

///|
test "httpwg: token-generated - 0x5d starting a token" {
  expect_parse_item_error("]a")
}

///|
test "httpwg: token-generated - 0x5e starting a token" {
  expect_parse_item_error("^a")
}

///|
test "httpwg: token-generated - 0x5f starting a token" {
  expect_parse_item_error("_a")
}

///|
test "httpwg: token-generated - 0x60 starting a token" {
  expect_parse_item_error("`a")
}

///|
test "httpwg: token-generated - 0x61 starting a token" {
  let expected : Item = { value: SfToken("aa"), parameters: [] }
  match parse_item("aa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "aa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x62 starting a token" {
  let expected : Item = { value: SfToken("ba"), parameters: [] }
  match parse_item("ba") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ba")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x63 starting a token" {
  let expected : Item = { value: SfToken("ca"), parameters: [] }
  match parse_item("ca") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ca")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x64 starting a token" {
  let expected : Item = { value: SfToken("da"), parameters: [] }
  match parse_item("da") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "da")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x65 starting a token" {
  let expected : Item = { value: SfToken("ea"), parameters: [] }
  match parse_item("ea") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ea")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x66 starting a token" {
  let expected : Item = { value: SfToken("fa"), parameters: [] }
  match parse_item("fa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "fa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x67 starting a token" {
  let expected : Item = { value: SfToken("ga"), parameters: [] }
  match parse_item("ga") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ga")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x68 starting a token" {
  let expected : Item = { value: SfToken("ha"), parameters: [] }
  match parse_item("ha") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ha")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x69 starting a token" {
  let expected : Item = { value: SfToken("ia"), parameters: [] }
  match parse_item("ia") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ia")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6a starting a token" {
  let expected : Item = { value: SfToken("ja"), parameters: [] }
  match parse_item("ja") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ja")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6b starting a token" {
  let expected : Item = { value: SfToken("ka"), parameters: [] }
  match parse_item("ka") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ka")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6c starting a token" {
  let expected : Item = { value: SfToken("la"), parameters: [] }
  match parse_item("la") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "la")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6d starting a token" {
  let expected : Item = { value: SfToken("ma"), parameters: [] }
  match parse_item("ma") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ma")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6e starting a token" {
  let expected : Item = { value: SfToken("na"), parameters: [] }
  match parse_item("na") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "na")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6f starting a token" {
  let expected : Item = { value: SfToken("oa"), parameters: [] }
  match parse_item("oa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "oa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x70 starting a token" {
  let expected : Item = { value: SfToken("pa"), parameters: [] }
  match parse_item("pa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "pa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x71 starting a token" {
  let expected : Item = { value: SfToken("qa"), parameters: [] }
  match parse_item("qa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "qa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x72 starting a token" {
  let expected : Item = { value: SfToken("ra"), parameters: [] }
  match parse_item("ra") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ra")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x73 starting a token" {
  let expected : Item = { value: SfToken("sa"), parameters: [] }
  match parse_item("sa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "sa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x74 starting a token" {
  let expected : Item = { value: SfToken("ta"), parameters: [] }
  match parse_item("ta") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ta")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x75 starting a token" {
  let expected : Item = { value: SfToken("ua"), parameters: [] }
  match parse_item("ua") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ua")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x76 starting a token" {
  let expected : Item = { value: SfToken("va"), parameters: [] }
  match parse_item("va") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "va")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x77 starting a token" {
  let expected : Item = { value: SfToken("wa"), parameters: [] }
  match parse_item("wa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "wa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x78 starting a token" {
  let expected : Item = { value: SfToken("xa"), parameters: [] }
  match parse_item("xa") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "xa")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x79 starting a token" {
  let expected : Item = { value: SfToken("ya"), parameters: [] }
  match parse_item("ya") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "ya")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x7a starting a token" {
  let expected : Item = { value: SfToken("za"), parameters: [] }
  match parse_item("za") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "za")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x7b starting a token" {
  expect_parse_item_error("{a")
}

///|
test "httpwg: token-generated - 0x7c starting a token" {
  expect_parse_item_error("|a")
}

///|
test "httpwg: token-generated - 0x7d starting a token" {
  expect_parse_item_error("}a")
}

///|
test "httpwg: token-generated - 0x7e starting a token" {
  expect_parse_item_error("~a")
}

///|
test "httpwg: token-generated - 0x7f starting a token" {
  expect_parse_item_error("\u007fa")
}
