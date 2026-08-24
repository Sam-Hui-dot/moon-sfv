///|
test "parse Boolean true item" {
  match parse_item("?1") {
    Ok(item) =>
      match item.value {
        SfBoolean(value) => assert_eq(value, true)
        _ => fail("expected an RFC 9651 Boolean item")
      }
    Err(_) => fail("expected ?1 to parse successfully")
  }
}

///|
test "parse Boolean false item" {
  match parse_item("?0") {
    Ok(item) =>
      match item.value {
        SfBoolean(value) => assert_eq(value, false)
        _ => fail("expected an RFC 9651 Boolean item")
      }
    Err(_) => fail("expected ?0 to parse successfully")
  }
}

///|
test "reject malformed Boolean item" {
  match parse_item("?2") {
    Ok(_) => fail("expected malformed Boolean input to be rejected")
    Err(_) => ()
  }
}

