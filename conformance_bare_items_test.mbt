///| Conformance test vectors generated from httpwg/structured-field-tests

///| BSD 3-Clause License - IETF Trust

///|
test "httpwg: binary - basic binary" {
  let expected : Item = {
    value: SfByteSequence(base64_decode("aGVsbG8=").unwrap()),
    parameters: [],
  }
  match parse_item(":aGVsbG8=:") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, ":aGVsbG8=:")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: binary - empty binary" {
  let expected : Item = {
    value: SfByteSequence(base64_decode("").unwrap()),
    parameters: [],
  }
  match parse_item("::") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "::")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: binary - padding at beginning" {
  expect_parse_item_error(":=aGVsbG8=:")
}

///|
test "httpwg: binary - padding in middle" {
  expect_parse_item_error(":a=GVsbG8=:")
}

///|
test "httpwg: binary - bad padding" {
  let expected : Item = {
    value: SfByteSequence(base64_decode("aGVsbG8=").unwrap()),
    parameters: [],
  }
  match parse_item(":aGVsbG8:") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, ":aGVsbG8=:")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => ()
  }
}

///|
test "httpwg: binary - bad padding dot" {
  expect_parse_item_error(":aGVsbG8.:")
}

///|
test "httpwg: binary - bad end delimiter" {
  expect_parse_item_error(":aGVsbG8=")
}

///|
test "httpwg: binary - extra whitespace" {
  expect_parse_item_error(":aGVsb G8=:")
}

///|
test "httpwg: binary - all whitespace" {
  expect_parse_item_error(":    :")
}

///|
test "httpwg: binary - extra chars" {
  expect_parse_item_error(":aGVsbG!8=:")
}

///|
test "httpwg: binary - suffix chars" {
  expect_parse_item_error(":aGVsbG8=!:")
}

///|
test "httpwg: binary - non-zero pad bits" {
  let expected : Item = {
    value: SfByteSequence(base64_decode("iQ==").unwrap()),
    parameters: [],
  }
  match parse_item(":iZ==:") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, ":iQ==:")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => ()
  }
}

///|
test "httpwg: binary - non-ASCII binary" {
  let expected : Item = {
    value: SfByteSequence(base64_decode("/+Ah").unwrap()),
    parameters: [],
  }
  match parse_item(":/+Ah:") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, ":/+Ah:")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: binary - base64url binary" {
  expect_parse_item_error(":_-Ah:")
}

///|
test "httpwg: binary - binary prefix only" {
  expect_parse_item_error(":")
}

///|
test "httpwg: boolean - basic true boolean" {
  let expected : Item = { value: SfBoolean(true), parameters: [] }
  match parse_item("?1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "?1")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: boolean - basic false boolean" {
  let expected : Item = { value: SfBoolean(false), parameters: [] }
  match parse_item("?0") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "?0")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: boolean - unknown boolean" {
  expect_parse_item_error("?Q")
}

///|
test "httpwg: boolean - whitespace boolean" {
  expect_parse_item_error("? 1")
}

///|
test "httpwg: boolean - negative zero boolean" {
  expect_parse_item_error("?-0")
}

///|
test "httpwg: boolean - T boolean" {
  expect_parse_item_error("?T")
}

///|
test "httpwg: boolean - F boolean" {
  expect_parse_item_error("?F")
}

///|
test "httpwg: boolean - t boolean" {
  expect_parse_item_error("?t")
}

///|
test "httpwg: boolean - f boolean" {
  expect_parse_item_error("?f")
}

///|
test "httpwg: boolean - spelled-out True boolean" {
  expect_parse_item_error("?True")
}

///|
test "httpwg: boolean - spelled-out False boolean" {
  expect_parse_item_error("?False")
}

///|
test "httpwg: boolean - boolean prefix only" {
  expect_parse_item_error("?")
}

///|
test "httpwg: date - date - 1970-01-01 00:00:00" {
  let expected : Item = { value: SfDate(0L), parameters: [] }
  match parse_item("@0") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "@0")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - date - 2022-08-04 01:57:13" {
  let expected : Item = { value: SfDate(1659578233L), parameters: [] }
  match parse_item("@1659578233") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "@1659578233")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - date - 1917-05-30 22:02:47" {
  let expected : Item = { value: SfDate(-1659578233L), parameters: [] }
  match parse_item("@-1659578233") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "@-1659578233")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - date - 2^31" {
  let expected : Item = { value: SfDate(2147483648L), parameters: [] }
  match parse_item("@2147483648") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "@2147483648")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - date - 2^32" {
  let expected : Item = { value: SfDate(4294967296L), parameters: [] }
  match parse_item("@4294967296") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "@4294967296")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - interoperability max date - 9999-12-31 00:00:00" {
  let expected : Item = { value: SfDate(253402214400L), parameters: [] }
  match parse_item("@253402214400") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "@253402214400")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - interoperability min date - 0001-01-01 00:00:00" {
  let expected : Item = { value: SfDate(-62135596800L), parameters: [] }
  match parse_item("@-62135596800") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "@-62135596800")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - date - decimal" {
  expect_parse_item_error("@1659578233.12")
}

///|
test "httpwg: date - syntactic max date - 999,999,999,999,999" {
  let expected : Item = { value: SfDate(999999999999999L), parameters: [] }
  match parse_item("@999999999999999") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "@999999999999999")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => ()
  }
}

///|
test "httpwg: date - syntactic min date - -999,999,999,999,999" {
  let expected : Item = { value: SfDate(-999999999999999L), parameters: [] }
  match parse_item("@-999999999999999") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "@-999999999999999")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => ()
  }
}

///|
test "httpwg: date - too large syntactic date - 1,000,000,000,000,000" {
  expect_parse_item_error("@1000000000000000")
}

///|
test "httpwg: date - too small syntactic date - -1,000,000,000,000,000" {
  expect_parse_item_error("@-1000000000000000")
}

///|
test "httpwg: date - date with negative zero" {
  let expected : Item = { value: SfDate(0L), parameters: [] }
  match parse_item("@-0") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "@0")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - date - empty" {
  expect_parse_item_error("@")
}

///|
test "httpwg: date - date - sign only" {
  expect_parse_item_error("@-")
}

///|
test "httpwg: date - date - space" {
  expect_parse_item_error("@ 12345678")
}

///|
test "httpwg: date - date - non-digit" {
  expect_parse_item_error("@abc")
}

///|
test "httpwg: display-string - basic display string (ascii content)" {
  let expected : Item = { value: SfDisplayString("foo bar"), parameters: [] }
  match parse_item("%\"foo bar\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "%\"foo bar\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: display-string - all printable ascii" {
  let expected : Item = {
    value: SfDisplayString(
      " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~",
    ),
    parameters: [],
  }
  match
    parse_item(
      "%\" !%22#$%25&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\"",
    ) {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) =>
          assert_eq(
            s, "%\" !%22#$%25&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\"",
          )
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: display-string - non-ascii display string (uppercase escaping)" {
  expect_parse_item_error("%\"f%C3%BC%C3%BC\"")
}

///|
test "httpwg: display-string - non-ascii display string (lowercase escaping)" {
  let expected : Item = {
    value: SfDisplayString("f\u00fc\u00fc"),
    parameters: [],
  }
  match parse_item("%\"f%c3%bc%c3%bc\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "%\"f%c3%bc%c3%bc\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: display-string - non-ascii display string (unescaped)" {
  expect_parse_item_error("%\"f\u00fc\u00fc\"")
}

///|
test "httpwg: display-string - tab in display string" {
  expect_parse_item_error("%\"\t\"")
}

///|
test "httpwg: display-string - newline in display string" {
  expect_parse_item_error("%\"\n\"")
}

///|
test "httpwg: display-string - single quoted display string" {
  expect_parse_item_error("%'foo'")
}

///|
test "httpwg: display-string - unquoted display string" {
  expect_parse_item_error("%foo")
}

///|
test "httpwg: display-string - display string missing initial quote" {
  expect_parse_item_error("%foo\"")
}

///|
test "httpwg: display-string - unbalanced display string" {
  expect_parse_item_error("%\"foo")
}

///|
test "httpwg: display-string - display string quoting" {
  let expected : Item = {
    value: SfDisplayString("foo \"bar\" \\ baz"),
    parameters: [],
  }
  match parse_item("%\"foo %22bar%22 \\ baz\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "%\"foo %22bar%22 \\ baz\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: display-string - bad display string escaping" {
  expect_parse_item_error("%\"foo %a")
}

///|
test "httpwg: display-string - bad display string utf-8 (invalid 2-byte seq)" {
  expect_parse_item_error("%\"%c3%28\"")
}

///|
test "httpwg: display-string - bad display string utf-8 (invalid sequence id)" {
  expect_parse_item_error("%\"%a0%a1\"")
}

///|
test "httpwg: display-string - bad display string utf-8 (invalid hex)" {
  expect_parse_item_error("%\"%g0%1w\"")
}

///|
test "httpwg: display-string - bad display string utf-8 (invalid 3-byte seq)" {
  expect_parse_item_error("%\"%e2%28%a1\"")
}

///|
test "httpwg: display-string - bad display string utf-8 (invalid 4-byte seq)" {
  expect_parse_item_error("%\"%f0%28%8c%28\"")
}

///|
test "httpwg: display-string - BOM in display string" {
  let expected : Item = {
    value: SfDisplayString("BOM: \ufeff"),
    parameters: [],
  }
  match parse_item("%\"BOM: %ef%bb%bf\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "%\"BOM: %ef%bb%bf\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: display-string - two lines display string" {
  let expected : Item = { value: SfDisplayString("foo, bar"), parameters: [] }
  match parse_item("%\"foo, bar\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "%\"foo, bar\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => ()
  }
}

///|
test "httpwg: display-string - truncated display string escape (zero digits)" {
  expect_parse_item_error("%\"%\"")
}

///|
test "httpwg: display-string - over-encoded display string" {
  let expected : Item = { value: SfDisplayString("a"), parameters: [] }
  match parse_item("%\"%61\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "%\"a\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - basic integer" {
  let expected : Item = { value: SfInteger(42L), parameters: [] }
  match parse_item("42") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "42")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - zero integer" {
  let expected : Item = { value: SfInteger(0L), parameters: [] }
  match parse_item("0") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - negative zero" {
  let expected : Item = { value: SfInteger(0L), parameters: [] }
  match parse_item("-0") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - double negative zero" {
  expect_parse_item_error("--0")
}

///|
test "httpwg: number - negative integer" {
  let expected : Item = { value: SfInteger(-42L), parameters: [] }
  match parse_item("-42") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "-42")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - leading 0 integer" {
  let expected : Item = { value: SfInteger(42L), parameters: [] }
  match parse_item("042") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "42")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - leading 0 negative integer" {
  let expected : Item = { value: SfInteger(-42L), parameters: [] }
  match parse_item("-042") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "-42")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - leading 0 zero" {
  let expected : Item = { value: SfInteger(0L), parameters: [] }
  match parse_item("00") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - comma" {
  expect_parse_item_error("2,3")
}

///|
test "httpwg: number - negative non-DIGIT first character" {
  expect_parse_item_error("-a23")
}

///|
test "httpwg: number - sign out of place" {
  expect_parse_item_error("4-2")
}

///|
test "httpwg: number - whitespace after sign" {
  expect_parse_item_error("- 42")
}

///|
test "httpwg: number - long integer" {
  let expected : Item = { value: SfInteger(123456789012345L), parameters: [] }
  match parse_item("123456789012345") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "123456789012345")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - long integer followed by comma" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfInteger(123456789012345L), parameters: [] }),
    ListMember::Item({ value: SfInteger(1L), parameters: [] }),
  ]
  match parse_list("123456789012345, 1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "123456789012345, 1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: number - long negative integer" {
  let expected : Item = { value: SfInteger(-123456789012345L), parameters: [] }
  match parse_item("-123456789012345") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "-123456789012345")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - too long integer" {
  expect_parse_item_error("1234567890123456")
}

///|
test "httpwg: number - too long integer followed by comma" {
  expect_parse_list_error("1234567890123456, 1")
}

///|
test "httpwg: number - negative too long integer" {
  expect_parse_item_error("-1234567890123456")
}

///|
test "httpwg: number - simple decimal" {
  let expected : Item = { value: SfDecimal(1.23), parameters: [] }
  match parse_item("1.23") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "1.23")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - negative decimal" {
  let expected : Item = { value: SfDecimal(-1.23), parameters: [] }
  match parse_item("-1.23") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "-1.23")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - decimal, whitespace after decimal" {
  expect_parse_item_error("1. 23")
}

///|
test "httpwg: number - decimal, whitespace before decimal" {
  expect_parse_item_error("1 .23")
}

///|
test "httpwg: number - negative decimal, whitespace after sign" {
  expect_parse_item_error("- 1.23")
}

///|
test "httpwg: number - decimal, followed by comma" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfDecimal(123456789012.123), parameters: [] }),
    ListMember::Item({ value: SfDecimal(1.1), parameters: [] }),
  ]
  match parse_list("123456789012.123, 1.1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "123456789012.123, 1.1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: number - tricky precision decimal" {
  let expected : Item = { value: SfDecimal(123456789012.1), parameters: [] }
  match parse_item("123456789012.1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "123456789012.1")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - double decimal decimal" {
  expect_parse_item_error("1.5.4")
}

///|
test "httpwg: number - adjacent double decimal decimal" {
  expect_parse_item_error("1..4")
}

///|
test "httpwg: number - decimal with three fractional digits" {
  let expected : Item = { value: SfDecimal(1.123), parameters: [] }
  match parse_item("1.123") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "1.123")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - negative decimal with three fractional digits" {
  let expected : Item = { value: SfDecimal(-1.123), parameters: [] }
  match parse_item("-1.123") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "-1.123")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - decimal with zero fractional digits" {
  expect_parse_item_error("1.")
}

///|
test "httpwg: number - decimal with four fractional digits" {
  expect_parse_item_error("1.1234")
}

///|
test "httpwg: number - negative decimal with four fractional digits" {
  expect_parse_item_error("-1.1234")
}

///|
test "httpwg: number - decimal with thirteen integer digits" {
  expect_parse_item_error("1234567890123.0")
}

///|
test "httpwg: number - negative decimal with thirteen integer digits" {
  expect_parse_item_error("-1234567890123.0")
}

///|
test "httpwg: number - decimal with 1 significant digit and 1 insignificant digit" {
  let expected : Item = { value: SfDecimal(1.2), parameters: [] }
  match parse_item("1.20") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "1.2")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - decimal with 1 significant digit and 2 insignificant digits" {
  let expected : Item = { value: SfDecimal(1.2), parameters: [] }
  match parse_item("1.200") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "1.2")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - decimal with 2 significant digits and 1 insignificant digit" {
  let expected : Item = { value: SfDecimal(1.23), parameters: [] }
  match parse_item("1.230") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "1.23")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string - basic string" {
  let expected : Item = { value: SfString("foo bar"), parameters: [] }
  match parse_item("\"foo bar\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\"foo bar\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string - empty string" {
  let expected : Item = { value: SfString(""), parameters: [] }
  match parse_item("\"\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\"\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string - long string" {
  let expected : Item = {
    value: SfString(
      "foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo ",
    ),
    parameters: [],
  }
  match
    parse_item(
      "\"foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo \"",
    ) {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) =>
          assert_eq(
            s, "\"foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo \"",
          )
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string - whitespace string" {
  let expected : Item = { value: SfString("   "), parameters: [] }
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
test "httpwg: string - non-ascii string" {
  expect_parse_item_error("\"f\u00fc\u00fc\"")
}

///|
test "httpwg: string - tab in string" {
  expect_parse_item_error("\"\t\"")
}

///|
test "httpwg: string - newline in string" {
  expect_parse_item_error("\" \n \"")
}

///|
test "httpwg: string - single quoted string" {
  expect_parse_item_error("'foo'")
}

///|
test "httpwg: string - unbalanced string" {
  expect_parse_item_error("\"foo")
}

///|
test "httpwg: string - string quoting" {
  let expected : Item = {
    value: SfString("foo \"bar\" \\ baz"),
    parameters: [],
  }
  match parse_item("\"foo \\\"bar\\\" \\\\ baz\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\"foo \\\"bar\\\" \\\\ baz\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string - bad string quoting" {
  expect_parse_item_error("\"foo \\,\"")
}

///|
test "httpwg: string - ending string quote" {
  expect_parse_item_error("\"foo \\\"")
}

///|
test "httpwg: string - abruptly ending string quote" {
  expect_parse_item_error("\"foo \\")
}

///|
test "httpwg: string - two lines string" {
  let expected : Item = { value: SfString("foo, bar"), parameters: [] }
  match parse_item("\"foo, bar\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\"foo, bar\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => ()
  }
}

///|
test "httpwg: token - basic token - item" {
  let expected : Item = { value: SfToken("a_b-c.d3:f%00/*"), parameters: [] }
  match parse_item("a_b-c.d3:f%00/*") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "a_b-c.d3:f%00/*")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token - token with capitals - item" {
  let expected : Item = { value: SfToken("fooBar"), parameters: [] }
  match parse_item("fooBar") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "fooBar")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token - token starting with capitals - item" {
  let expected : Item = { value: SfToken("FooBar"), parameters: [] }
  match parse_item("FooBar") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "FooBar")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token - basic token - list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfToken("a_b-c3/*"), parameters: [] }),
  ]
  match parse_list("a_b-c3/*") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "a_b-c3/*")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: token - token with capitals - list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfToken("fooBar"), parameters: [] }),
  ]
  match parse_list("fooBar") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "fooBar")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: token - token starting with capitals - list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfToken("FooBar"), parameters: [] }),
  ]
  match parse_list("FooBar") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "FooBar")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}
