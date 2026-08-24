///|
fn expect_boolean(input : String, expected : Bool) -> Unit raise {
  match parse_item(input) {
    Ok(item) =>
      match item.value {
        SfBoolean(value) => assert_eq(value, expected)
        _ => fail("expected Boolean item")
      }
    Err(_) => fail("expected Boolean item to parse")
  }
}

///|
fn expect_integer(input : String, expected : Int64) -> Unit raise {
  match parse_item(input) {
    Ok(item) =>
      match item.value {
        SfInteger(value) => assert_eq(value, expected)
        _ => fail("expected Integer item")
      }
    Err(_) => fail("expected Integer item to parse")
  }
}

///|
fn expect_string(input : String, expected : String) -> Unit raise {
  match parse_item(input) {
    Ok(item) =>
      match item.value {
        SfString(value) => assert_eq(value, expected)
        _ => fail("expected String item")
      }
    Err(_) => fail("expected String item to parse")
  }
}

///|
fn expect_token(input : String, expected : String) -> Unit raise {
  match parse_item(input) {
    Ok(item) =>
      match item.value {
        SfToken(value) => assert_eq(value, expected)
        _ => fail("expected Token item")
      }
    Err(_) => fail("expected Token item to parse")
  }
}

///|
fn expect_parse_error(input : String) -> Unit raise {
  match parse_item(input) {
    Ok(_) => fail("expected malformed input to be rejected")
    Err(_) => ()
  }
}

///|
fn expect_serialized(item : Item, expected : String) -> Unit raise {
  match serialize_item(item) {
    Ok(value) => assert_eq(value, expected)
    Err(_) => fail("expected Item to serialize")
  }
}

///|
test "parse Boolean true item" {
  expect_boolean("?1", true)
}

///|
test "parse Boolean false item" {
  expect_boolean("?0", false)
}

///|
test "reject malformed Boolean item" {
  expect_parse_error("?2")
}

///|
test "parse zero Integer item" {
  expect_integer("0", 0L)
}

///|
test "parse positive Integer item" {
  expect_integer("42", 42L)
}

///|
test "parse negative Integer item" {
  expect_integer("-42", -42L)
}

///|
test "parse maximum RFC Integer" {
  expect_integer("999999999999999", 999_999_999_999_999L)
}

///|
test "reject out-of-range RFC Integer" {
  expect_parse_error("1000000000000000")
}

///|
test "parse String item" {
  expect_string("\"hello world\"", "hello world")
}

///|
test "parse escaped String item" {
  expect_string("\"say \\\"hi\\\"\"", "say \"hi\"")
}

///|
test "reject invalid String escape" {
  expect_parse_error("\"bad\\n\"")
}

///|
test "reject unterminated String" {
  expect_parse_error("\"unfinished")
}

///|
test "parse Token item" {
  expect_token("example", "example")
}

///|
test "parse Token with URI characters" {
  expect_token("abc/def:ghi", "abc/def:ghi")
}

///|
test "parse Boolean parameter shorthand" {
  match parse_item("token;secure") {
    Ok(item) => {
      assert_eq(item.parameters.length(), 1)
      assert_eq(item.parameters[0].key, "secure")
      match item.parameters[0].value {
        SfBoolean(value) => assert_eq(value, true)
        _ => fail("expected Boolean parameter")
      }
    }
    Err(_) => fail("expected parameterized Item to parse")
  }
}

///|
test "parse typed parameters" {
  match parse_item("token;a=1;b=\"two\";c=?0") {
    Ok(item) => {
      assert_eq(item.parameters.length(), 3)
      assert_eq(item.parameters[0].key, "a")
      assert_eq(item.parameters[1].key, "b")
      assert_eq(item.parameters[2].key, "c")
    }
    Err(_) => fail("expected typed parameters to parse")
  }
}

///|
test "replace duplicate parameter value" {
  match parse_item("token;a=1;a=2") {
    Ok(item) => {
      assert_eq(item.parameters.length(), 1)
      match item.parameters[0].value {
        SfInteger(value) => assert_eq(value, 2L)
        _ => fail("expected replacement Integer parameter")
      }
    }
    Err(_) => fail("expected duplicate parameter to parse")
  }
}

///|
test "ignore surrounding spaces" {
  expect_integer(" 42 ", 42L)
}

///|
test "reject trailing characters" {
  expect_parse_error("42 extra")
}

///|
test "serialize Boolean Item" {
  expect_serialized({ value: SfBoolean(true), parameters: [] }, "?1")
}

///|
test "serialize Integer Item" {
  expect_serialized({ value: SfInteger(-42L), parameters: [] }, "-42")
}

///|
test "serialize escaped String Item" {
  expect_serialized(
    { value: SfString("say \"hi\""), parameters: [] },
    "\"say \\\"hi\\\"\"",
  )
}

///|
test "serialize Token with parameters" {
  expect_serialized(
    {
      value: SfToken("example"),
      parameters: [
        { key: "secure", value: SfBoolean(true) },
        { key: "level", value: SfInteger(2L) },
      ],
    },
    "example;secure;level=2",
  )
}

///|
test "reject invalid Token during serialization" {
  match serialize_item({ value: SfToken("not valid"), parameters: [] }) {
    Ok(_) => fail("expected invalid Token to be rejected")
    Err(_) => ()
  }
}
