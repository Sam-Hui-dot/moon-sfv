///| Conformance test vectors generated from httpwg/structured-field-tests

///| BSD 3-Clause License - IETF Trust

///|
test "httpwg: binary - basic binary" {
  match parse_item(":aGVsbG8=:") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: binary - empty binary" {
  match parse_item("::") {
    Ok(_) => ()
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
  match parse_item(":aGVsbG8:") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, ":aGVsbG8=:")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
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
  match parse_item(":iZ==:") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, ":iQ==:")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: binary - non-ASCII binary" {
  match parse_item(":/+Ah:") {
    Ok(_) => ()
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
  match parse_item("?1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: boolean - basic false boolean" {
  match parse_item("?0") {
    Ok(_) => ()
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
  match parse_item("@0") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - date - 2022-08-04 01:57:13" {
  match parse_item("@1659578233") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - date - 1917-05-30 22:02:47" {
  match parse_item("@-1659578233") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - date - 2^31" {
  match parse_item("@2147483648") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - date - 2^32" {
  match parse_item("@4294967296") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - interoperability max date - 9999-12-31 00:00:00" {
  match parse_item("@253402214400") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - interoperability min date - 0001-01-01 00:00:00" {
  match parse_item("@-62135596800") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - date - decimal" {
  expect_parse_item_error("@1659578233.12")
}

///|
test "httpwg: date - syntactic max date - 999,999,999,999,999" {
  match parse_item("@999999999999999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: date - syntactic min date - -999,999,999,999,999" {
  match parse_item("@-999999999999999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
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
  match parse_item("@-0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "@0")
        Err(_) => fail("expected canonical serialization")
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
test "httpwg: dictionary - basic dictionary" {
  match parse_dictionary("en=\"Applepie\", da=:w4ZibGV0w6ZydGUK:") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - empty dictionary" {
  match parse_dictionary("") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - single item dictionary" {
  match parse_dictionary("a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - list item dictionary" {
  match parse_dictionary("a=(1 2)") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - single list item dictionary" {
  match parse_dictionary("a=(1)") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - empty list item dictionary" {
  match parse_dictionary("a=()") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - no whitespace dictionary" {
  match parse_dictionary("a=1,b=2") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=1, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - extra whitespace dictionary" {
  match parse_dictionary("a=1 ,  b=2") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=1, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - tab separated dictionary" {
  match parse_dictionary("a=1\t,\tb=2") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=1, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - leading whitespace dictionary" {
  match parse_dictionary("     a=1 ,  b=2") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=1, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - whitespace before = dictionary" {
  expect_parse_dict_error("a =1, b=2")
}

///|
test "httpwg: dictionary - whitespace after = dictionary" {
  expect_parse_dict_error("a=1, b= 2")
}

///|
test "httpwg: dictionary - two lines dictionary" {
  match parse_dictionary("a=1, b=2") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=1, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - missing value dictionary" {
  match parse_dictionary("a=1, b, c=3") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - all missing value dictionary" {
  match parse_dictionary("a, b, c") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - start missing value dictionary" {
  match parse_dictionary("a, b=2") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - end missing value dictionary" {
  match parse_dictionary("a=1, b") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - missing value with params dictionary" {
  match parse_dictionary("a=1, b;foo=9, c=3") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - explicit true value with params dictionary" {
  match parse_dictionary("a=1, b=?1;foo=9, c=3") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=1, b;foo=9, c=3")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - trailing comma dictionary" {
  expect_parse_dict_error("a=1, b=2,")
}

///|
test "httpwg: dictionary - empty item dictionary" {
  expect_parse_dict_error("a=1,,b=2,")
}

///|
test "httpwg: dictionary - duplicate key dictionary" {
  match parse_dictionary("a=1,b=2,a=3") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=3, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - dictionary key ordering" {
  match parse_dictionary("m, z, t") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - numeric key dictionary" {
  expect_parse_dict_error("a=1,1b=2,a=1")
}

///|
test "httpwg: dictionary - uppercase key dictionary" {
  expect_parse_dict_error("a=1,B=2,a=1")
}

///|
test "httpwg: dictionary - bad key dictionary" {
  expect_parse_dict_error("a=1,b!=2,a=1")
}

///|
test "httpwg: display-string - basic display string (ascii content)" {
  match parse_item("%\"foo bar\"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: display-string - all printable ascii" {
  match
    parse_item(
      "%\" !%22#$%25&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\"",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: display-string - non-ascii display string (uppercase escaping)" {
  expect_parse_item_error("%\"f%C3%BC%C3%BC\"")
}

///|
test "httpwg: display-string - non-ascii display string (lowercase escaping)" {
  match parse_item("%\"f%c3%bc%c3%bc\"") {
    Ok(_) => ()
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
  match parse_item("%\"foo %22bar%22 \\ baz\"") {
    Ok(_) => ()
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
  match parse_item("%\"BOM: %ef%bb%bf\"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: display-string - two lines display string" {
  () // multiple lines for item must fail
}

///|
test "httpwg: display-string - truncated display string escape (zero digits)" {
  expect_parse_item_error("%\"%\"")
}

///|
test "httpwg: display-string - over-encoded display string" {
  match parse_item("%\"%61\"") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "%\"a\"")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Foo-Example" {
  match parse_item("2; foourl=\"https://foo.example.com/\"") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "2;foourl=\"https://foo.example.com/\"")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-StrListHeader" {
  match parse_list("\"foo\", \"bar\", \"It was the best of times.\"") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Example-Hdr (list on one line)" {
  match parse_list("foo, bar") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Example-Hdr (list on two lines)" {
  match parse_list("foo, bar") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo, bar")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Example-StrListListHeader" {
  match parse_list("(\"foo\" \"bar\"), (\"baz\"), (\"bat\" \"one\"), ()") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Example-ListListParam" {
  match parse_list("(\"foo\"; a=1;b=2);lvl=5, (\"bar\" \"baz\");lvl=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) =>
          assert_eq(s, "(\"foo\";a=1;b=2);lvl=5, (\"bar\" \"baz\");lvl=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Example-ParamListHeader" {
  match parse_list("abc;a=1;b=2; cde_456, (ghi;jk=4 l);q=\"9\";r=w") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "abc;a=1;b=2;cde_456, (ghi;jk=4 l);q=\"9\";r=w")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Example-IntHeader" {
  match parse_item("1; a; b=?0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1;a;b=?0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-DictHeader" {
  match parse_dictionary("en=\"Applepie\", da=:w4ZibGV0w6ZydGU=:") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: examples - Example-DictHeader (boolean values)" {
  match parse_dictionary("a=?0, b, c; foo=bar") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=?0, b, c;foo=bar")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: examples - Example-DictListHeader" {
  match parse_dictionary("rating=1.5, feelings=(joy sadness)") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: examples - Example-MixDict" {
  match parse_dictionary("a=(1 2), b=3, c=4;aa=bb, d=(5 6);valid") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=(1 2), b=3, c=4;aa=bb, d=(5 6);valid")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: examples - Example-Hdr (dictionary on one line)" {
  match parse_dictionary("foo=1, bar=2") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: examples - Example-Hdr (dictionary on two lines)" {
  match parse_dictionary("foo=1, bar=2") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "foo=1, bar=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: examples - Example-IntItemHeader" {
  match parse_item("5") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-IntItemHeader (params)" {
  match parse_item("5; foo=bar") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "5;foo=bar")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-IntegerHeader" {
  match parse_item("42") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-FloatHeader" {
  match parse_item("4.5") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-StringHeader" {
  match parse_item("\"hello world\"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-BinaryHdr" {
  match parse_item(":cHJldGVuZCB0aGlzIGlzIGJpbmFyeSBjb250ZW50Lg==:") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-BoolHdr" {
  match parse_item("?1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: item - empty item" {
  expect_parse_item_error("")
}

///|
test "httpwg: item - leading space" {
  expect_parse_item_error(" \t 1")
}

///|
test "httpwg: item - trailing space" {
  expect_parse_item_error("1 \t ")
}

///|
test "httpwg: item - leading and trailing space" {
  match parse_item("  1  ") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: item - leading and trailing whitespace" {
  match parse_item("     1  ") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

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
  match parse_dictionary("*=1") {
    Ok(_) => ()
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
  match parse_dictionary("a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x62 as a single-character dictionary key" {
  match parse_dictionary("b=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x63 as a single-character dictionary key" {
  match parse_dictionary("c=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x64 as a single-character dictionary key" {
  match parse_dictionary("d=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x65 as a single-character dictionary key" {
  match parse_dictionary("e=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x66 as a single-character dictionary key" {
  match parse_dictionary("f=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x67 as a single-character dictionary key" {
  match parse_dictionary("g=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x68 as a single-character dictionary key" {
  match parse_dictionary("h=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x69 as a single-character dictionary key" {
  match parse_dictionary("i=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6a as a single-character dictionary key" {
  match parse_dictionary("j=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6b as a single-character dictionary key" {
  match parse_dictionary("k=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6c as a single-character dictionary key" {
  match parse_dictionary("l=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6d as a single-character dictionary key" {
  match parse_dictionary("m=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6e as a single-character dictionary key" {
  match parse_dictionary("n=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6f as a single-character dictionary key" {
  match parse_dictionary("o=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x70 as a single-character dictionary key" {
  match parse_dictionary("p=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x71 as a single-character dictionary key" {
  match parse_dictionary("q=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x72 as a single-character dictionary key" {
  match parse_dictionary("r=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x73 as a single-character dictionary key" {
  match parse_dictionary("s=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x74 as a single-character dictionary key" {
  match parse_dictionary("t=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x75 as a single-character dictionary key" {
  match parse_dictionary("u=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x76 as a single-character dictionary key" {
  match parse_dictionary("v=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x77 as a single-character dictionary key" {
  match parse_dictionary("w=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x78 as a single-character dictionary key" {
  match parse_dictionary("x=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x79 as a single-character dictionary key" {
  match parse_dictionary("y=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x7a as a single-character dictionary key" {
  match parse_dictionary("z=1") {
    Ok(_) => ()
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
  match parse_dictionary("a*a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x2b in dictionary key" {
  expect_parse_dict_error("a+a=1")
}

///|
test "httpwg: key-generated - 0x2c in dictionary key" {
  match parse_dictionary("a,a=1") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=1")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x2d in dictionary key" {
  match parse_dictionary("a-a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x2e in dictionary key" {
  match parse_dictionary("a.a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x2f in dictionary key" {
  expect_parse_dict_error("a/a=1")
}

///|
test "httpwg: key-generated - 0x30 in dictionary key" {
  match parse_dictionary("a0a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x31 in dictionary key" {
  match parse_dictionary("a1a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x32 in dictionary key" {
  match parse_dictionary("a2a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x33 in dictionary key" {
  match parse_dictionary("a3a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x34 in dictionary key" {
  match parse_dictionary("a4a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x35 in dictionary key" {
  match parse_dictionary("a5a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x36 in dictionary key" {
  match parse_dictionary("a6a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x37 in dictionary key" {
  match parse_dictionary("a7a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x38 in dictionary key" {
  match parse_dictionary("a8a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x39 in dictionary key" {
  match parse_dictionary("a9a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x3a in dictionary key" {
  expect_parse_dict_error("a:a=1")
}

///|
test "httpwg: key-generated - 0x3b in dictionary key" {
  match parse_dictionary("a;a=1") {
    Ok(_) => ()
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
  match parse_dictionary("a_a=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x60 in dictionary key" {
  expect_parse_dict_error("a`a=1")
}

///|
test "httpwg: key-generated - 0x61 in dictionary key" {
  match parse_dictionary("aaa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x62 in dictionary key" {
  match parse_dictionary("aba=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x63 in dictionary key" {
  match parse_dictionary("aca=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x64 in dictionary key" {
  match parse_dictionary("ada=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x65 in dictionary key" {
  match parse_dictionary("aea=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x66 in dictionary key" {
  match parse_dictionary("afa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x67 in dictionary key" {
  match parse_dictionary("aga=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x68 in dictionary key" {
  match parse_dictionary("aha=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x69 in dictionary key" {
  match parse_dictionary("aia=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6a in dictionary key" {
  match parse_dictionary("aja=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6b in dictionary key" {
  match parse_dictionary("aka=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6c in dictionary key" {
  match parse_dictionary("ala=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6d in dictionary key" {
  match parse_dictionary("ama=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6e in dictionary key" {
  match parse_dictionary("ana=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6f in dictionary key" {
  match parse_dictionary("aoa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x70 in dictionary key" {
  match parse_dictionary("apa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x71 in dictionary key" {
  match parse_dictionary("aqa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x72 in dictionary key" {
  match parse_dictionary("ara=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x73 in dictionary key" {
  match parse_dictionary("asa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x74 in dictionary key" {
  match parse_dictionary("ata=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x75 in dictionary key" {
  match parse_dictionary("aua=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x76 in dictionary key" {
  match parse_dictionary("ava=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x77 in dictionary key" {
  match parse_dictionary("awa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x78 in dictionary key" {
  match parse_dictionary("axa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x79 in dictionary key" {
  match parse_dictionary("aya=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x7a in dictionary key" {
  match parse_dictionary("aza=1") {
    Ok(_) => ()
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
  match parse_dictionary(" a=1") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=1")
        Err(_) => fail("expected canonical dictionary serialization")
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
  match parse_dictionary("*a=1") {
    Ok(_) => ()
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
  match parse_dictionary("aa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x62 starting a dictionary key" {
  match parse_dictionary("ba=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x63 starting a dictionary key" {
  match parse_dictionary("ca=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x64 starting a dictionary key" {
  match parse_dictionary("da=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x65 starting a dictionary key" {
  match parse_dictionary("ea=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x66 starting a dictionary key" {
  match parse_dictionary("fa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x67 starting a dictionary key" {
  match parse_dictionary("ga=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x68 starting a dictionary key" {
  match parse_dictionary("ha=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x69 starting a dictionary key" {
  match parse_dictionary("ia=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6a starting a dictionary key" {
  match parse_dictionary("ja=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6b starting a dictionary key" {
  match parse_dictionary("ka=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6c starting a dictionary key" {
  match parse_dictionary("la=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6d starting a dictionary key" {
  match parse_dictionary("ma=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6e starting a dictionary key" {
  match parse_dictionary("na=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x6f starting a dictionary key" {
  match parse_dictionary("oa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x70 starting a dictionary key" {
  match parse_dictionary("pa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x71 starting a dictionary key" {
  match parse_dictionary("qa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x72 starting a dictionary key" {
  match parse_dictionary("ra=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x73 starting a dictionary key" {
  match parse_dictionary("sa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x74 starting a dictionary key" {
  match parse_dictionary("ta=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x75 starting a dictionary key" {
  match parse_dictionary("ua=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x76 starting a dictionary key" {
  match parse_dictionary("va=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x77 starting a dictionary key" {
  match parse_dictionary("wa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x78 starting a dictionary key" {
  match parse_dictionary("xa=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x79 starting a dictionary key" {
  match parse_dictionary("ya=1") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: key-generated - 0x7a starting a dictionary key" {
  match parse_dictionary("za=1") {
    Ok(_) => ()
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
  match parse_list("foo; a*a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a*a=1")
        Err(_) => fail("expected canonical list serialization")
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
  match parse_list("foo; a-a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a-a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x2e in parameterised list key" {
  match parse_list("foo; a.a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a.a=1")
        Err(_) => fail("expected canonical list serialization")
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
  match parse_list("foo; a0a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a0a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x31 in parameterised list key" {
  match parse_list("foo; a1a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a1a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x32 in parameterised list key" {
  match parse_list("foo; a2a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a2a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x33 in parameterised list key" {
  match parse_list("foo; a3a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a3a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x34 in parameterised list key" {
  match parse_list("foo; a4a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a4a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x35 in parameterised list key" {
  match parse_list("foo; a5a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a5a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x36 in parameterised list key" {
  match parse_list("foo; a6a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a6a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x37 in parameterised list key" {
  match parse_list("foo; a7a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a7a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x38 in parameterised list key" {
  match parse_list("foo; a8a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a8a=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x39 in parameterised list key" {
  match parse_list("foo; a9a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a9a=1")
        Err(_) => fail("expected canonical list serialization")
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
  match parse_list("foo; a;a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a=1")
        Err(_) => fail("expected canonical list serialization")
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
  match parse_list("foo; a_a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a_a=1")
        Err(_) => fail("expected canonical list serialization")
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
  match parse_list("foo; aaa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aaa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x62 in parameterised list key" {
  match parse_list("foo; aba=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aba=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x63 in parameterised list key" {
  match parse_list("foo; aca=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aca=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x64 in parameterised list key" {
  match parse_list("foo; ada=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ada=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x65 in parameterised list key" {
  match parse_list("foo; aea=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aea=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x66 in parameterised list key" {
  match parse_list("foo; afa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;afa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x67 in parameterised list key" {
  match parse_list("foo; aga=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aga=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x68 in parameterised list key" {
  match parse_list("foo; aha=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aha=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x69 in parameterised list key" {
  match parse_list("foo; aia=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aia=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6a in parameterised list key" {
  match parse_list("foo; aja=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aja=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6b in parameterised list key" {
  match parse_list("foo; aka=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aka=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6c in parameterised list key" {
  match parse_list("foo; ala=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ala=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6d in parameterised list key" {
  match parse_list("foo; ama=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ama=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6e in parameterised list key" {
  match parse_list("foo; ana=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ana=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6f in parameterised list key" {
  match parse_list("foo; aoa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aoa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x70 in parameterised list key" {
  match parse_list("foo; apa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;apa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x71 in parameterised list key" {
  match parse_list("foo; aqa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aqa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x72 in parameterised list key" {
  match parse_list("foo; ara=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ara=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x73 in parameterised list key" {
  match parse_list("foo; asa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;asa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x74 in parameterised list key" {
  match parse_list("foo; ata=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ata=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x75 in parameterised list key" {
  match parse_list("foo; aua=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aua=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x76 in parameterised list key" {
  match parse_list("foo; ava=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ava=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x77 in parameterised list key" {
  match parse_list("foo; awa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;awa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x78 in parameterised list key" {
  match parse_list("foo; axa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;axa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x79 in parameterised list key" {
  match parse_list("foo; aya=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aya=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x7a in parameterised list key" {
  match parse_list("foo; aza=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aza=1")
        Err(_) => fail("expected canonical list serialization")
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
  match parse_list("foo;  a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;a=1")
        Err(_) => fail("expected canonical list serialization")
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
  match parse_list("foo; *a=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;*a=1")
        Err(_) => fail("expected canonical list serialization")
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
  match parse_list("foo; aa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;aa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x62 starting a parameterised list key" {
  match parse_list("foo; ba=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ba=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x63 starting a parameterised list key" {
  match parse_list("foo; ca=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ca=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x64 starting a parameterised list key" {
  match parse_list("foo; da=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;da=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x65 starting a parameterised list key" {
  match parse_list("foo; ea=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ea=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x66 starting a parameterised list key" {
  match parse_list("foo; fa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;fa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x67 starting a parameterised list key" {
  match parse_list("foo; ga=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ga=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x68 starting a parameterised list key" {
  match parse_list("foo; ha=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ha=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x69 starting a parameterised list key" {
  match parse_list("foo; ia=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ia=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6a starting a parameterised list key" {
  match parse_list("foo; ja=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ja=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6b starting a parameterised list key" {
  match parse_list("foo; ka=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ka=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6c starting a parameterised list key" {
  match parse_list("foo; la=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;la=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6d starting a parameterised list key" {
  match parse_list("foo; ma=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ma=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6e starting a parameterised list key" {
  match parse_list("foo; na=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;na=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x6f starting a parameterised list key" {
  match parse_list("foo; oa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;oa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x70 starting a parameterised list key" {
  match parse_list("foo; pa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;pa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x71 starting a parameterised list key" {
  match parse_list("foo; qa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;qa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x72 starting a parameterised list key" {
  match parse_list("foo; ra=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ra=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x73 starting a parameterised list key" {
  match parse_list("foo; sa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;sa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x74 starting a parameterised list key" {
  match parse_list("foo; ta=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ta=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x75 starting a parameterised list key" {
  match parse_list("foo; ua=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ua=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x76 starting a parameterised list key" {
  match parse_list("foo; va=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;va=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x77 starting a parameterised list key" {
  match parse_list("foo; wa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;wa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x78 starting a parameterised list key" {
  match parse_list("foo; xa=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;xa=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x79 starting a parameterised list key" {
  match parse_list("foo; ya=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;ya=1")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: key-generated - 0x7a starting a parameterised list key" {
  match parse_list("foo; za=1") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "foo;za=1")
        Err(_) => fail("expected canonical list serialization")
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

///|
test "httpwg: large-generated - large dictionary" {
  match
    parse_dictionary(
      "a0=1, a1=1, a2=1, a3=1, a4=1, a5=1, a6=1, a7=1, a8=1, a9=1, a10=1, a11=1, a12=1, a13=1, a14=1, a15=1, a16=1, a17=1, a18=1, a19=1, a20=1, a21=1, a22=1, a23=1, a24=1, a25=1, a26=1, a27=1, a28=1, a29=1, a30=1, a31=1, a32=1, a33=1, a34=1, a35=1, a36=1, a37=1, a38=1, a39=1, a40=1, a41=1, a42=1, a43=1, a44=1, a45=1, a46=1, a47=1, a48=1, a49=1, a50=1, a51=1, a52=1, a53=1, a54=1, a55=1, a56=1, a57=1, a58=1, a59=1, a60=1, a61=1, a62=1, a63=1, a64=1, a65=1, a66=1, a67=1, a68=1, a69=1, a70=1, a71=1, a72=1, a73=1, a74=1, a75=1, a76=1, a77=1, a78=1, a79=1, a80=1, a81=1, a82=1, a83=1, a84=1, a85=1, a86=1, a87=1, a88=1, a89=1, a90=1, a91=1, a92=1, a93=1, a94=1, a95=1, a96=1, a97=1, a98=1, a99=1, a100=1, a101=1, a102=1, a103=1, a104=1, a105=1, a106=1, a107=1, a108=1, a109=1, a110=1, a111=1, a112=1, a113=1, a114=1, a115=1, a116=1, a117=1, a118=1, a119=1, a120=1, a121=1, a122=1, a123=1, a124=1, a125=1, a126=1, a127=1, a128=1, a129=1, a130=1, a131=1, a132=1, a133=1, a134=1, a135=1, a136=1, a137=1, a138=1, a139=1, a140=1, a141=1, a142=1, a143=1, a144=1, a145=1, a146=1, a147=1, a148=1, a149=1, a150=1, a151=1, a152=1, a153=1, a154=1, a155=1, a156=1, a157=1, a158=1, a159=1, a160=1, a161=1, a162=1, a163=1, a164=1, a165=1, a166=1, a167=1, a168=1, a169=1, a170=1, a171=1, a172=1, a173=1, a174=1, a175=1, a176=1, a177=1, a178=1, a179=1, a180=1, a181=1, a182=1, a183=1, a184=1, a185=1, a186=1, a187=1, a188=1, a189=1, a190=1, a191=1, a192=1, a193=1, a194=1, a195=1, a196=1, a197=1, a198=1, a199=1, a200=1, a201=1, a202=1, a203=1, a204=1, a205=1, a206=1, a207=1, a208=1, a209=1, a210=1, a211=1, a212=1, a213=1, a214=1, a215=1, a216=1, a217=1, a218=1, a219=1, a220=1, a221=1, a222=1, a223=1, a224=1, a225=1, a226=1, a227=1, a228=1, a229=1, a230=1, a231=1, a232=1, a233=1, a234=1, a235=1, a236=1, a237=1, a238=1, a239=1, a240=1, a241=1, a242=1, a243=1, a244=1, a245=1, a246=1, a247=1, a248=1, a249=1, a250=1, a251=1, a252=1, a253=1, a254=1, a255=1, a256=1, a257=1, a258=1, a259=1, a260=1, a261=1, a262=1, a263=1, a264=1, a265=1, a266=1, a267=1, a268=1, a269=1, a270=1, a271=1, a272=1, a273=1, a274=1, a275=1, a276=1, a277=1, a278=1, a279=1, a280=1, a281=1, a282=1, a283=1, a284=1, a285=1, a286=1, a287=1, a288=1, a289=1, a290=1, a291=1, a292=1, a293=1, a294=1, a295=1, a296=1, a297=1, a298=1, a299=1, a300=1, a301=1, a302=1, a303=1, a304=1, a305=1, a306=1, a307=1, a308=1, a309=1, a310=1, a311=1, a312=1, a313=1, a314=1, a315=1, a316=1, a317=1, a318=1, a319=1, a320=1, a321=1, a322=1, a323=1, a324=1, a325=1, a326=1, a327=1, a328=1, a329=1, a330=1, a331=1, a332=1, a333=1, a334=1, a335=1, a336=1, a337=1, a338=1, a339=1, a340=1, a341=1, a342=1, a343=1, a344=1, a345=1, a346=1, a347=1, a348=1, a349=1, a350=1, a351=1, a352=1, a353=1, a354=1, a355=1, a356=1, a357=1, a358=1, a359=1, a360=1, a361=1, a362=1, a363=1, a364=1, a365=1, a366=1, a367=1, a368=1, a369=1, a370=1, a371=1, a372=1, a373=1, a374=1, a375=1, a376=1, a377=1, a378=1, a379=1, a380=1, a381=1, a382=1, a383=1, a384=1, a385=1, a386=1, a387=1, a388=1, a389=1, a390=1, a391=1, a392=1, a393=1, a394=1, a395=1, a396=1, a397=1, a398=1, a399=1, a400=1, a401=1, a402=1, a403=1, a404=1, a405=1, a406=1, a407=1, a408=1, a409=1, a410=1, a411=1, a412=1, a413=1, a414=1, a415=1, a416=1, a417=1, a418=1, a419=1, a420=1, a421=1, a422=1, a423=1, a424=1, a425=1, a426=1, a427=1, a428=1, a429=1, a430=1, a431=1, a432=1, a433=1, a434=1, a435=1, a436=1, a437=1, a438=1, a439=1, a440=1, a441=1, a442=1, a443=1, a444=1, a445=1, a446=1, a447=1, a448=1, a449=1, a450=1, a451=1, a452=1, a453=1, a454=1, a455=1, a456=1, a457=1, a458=1, a459=1, a460=1, a461=1, a462=1, a463=1, a464=1, a465=1, a466=1, a467=1, a468=1, a469=1, a470=1, a471=1, a472=1, a473=1, a474=1, a475=1, a476=1, a477=1, a478=1, a479=1, a480=1, a481=1, a482=1, a483=1, a484=1, a485=1, a486=1, a487=1, a488=1, a489=1, a490=1, a491=1, a492=1, a493=1, a494=1, a495=1, a496=1, a497=1, a498=1, a499=1, a500=1, a501=1, a502=1, a503=1, a504=1, a505=1, a506=1, a507=1, a508=1, a509=1, a510=1, a511=1, a512=1, a513=1, a514=1, a515=1, a516=1, a517=1, a518=1, a519=1, a520=1, a521=1, a522=1, a523=1, a524=1, a525=1, a526=1, a527=1, a528=1, a529=1, a530=1, a531=1, a532=1, a533=1, a534=1, a535=1, a536=1, a537=1, a538=1, a539=1, a540=1, a541=1, a542=1, a543=1, a544=1, a545=1, a546=1, a547=1, a548=1, a549=1, a550=1, a551=1, a552=1, a553=1, a554=1, a555=1, a556=1, a557=1, a558=1, a559=1, a560=1, a561=1, a562=1, a563=1, a564=1, a565=1, a566=1, a567=1, a568=1, a569=1, a570=1, a571=1, a572=1, a573=1, a574=1, a575=1, a576=1, a577=1, a578=1, a579=1, a580=1, a581=1, a582=1, a583=1, a584=1, a585=1, a586=1, a587=1, a588=1, a589=1, a590=1, a591=1, a592=1, a593=1, a594=1, a595=1, a596=1, a597=1, a598=1, a599=1, a600=1, a601=1, a602=1, a603=1, a604=1, a605=1, a606=1, a607=1, a608=1, a609=1, a610=1, a611=1, a612=1, a613=1, a614=1, a615=1, a616=1, a617=1, a618=1, a619=1, a620=1, a621=1, a622=1, a623=1, a624=1, a625=1, a626=1, a627=1, a628=1, a629=1, a630=1, a631=1, a632=1, a633=1, a634=1, a635=1, a636=1, a637=1, a638=1, a639=1, a640=1, a641=1, a642=1, a643=1, a644=1, a645=1, a646=1, a647=1, a648=1, a649=1, a650=1, a651=1, a652=1, a653=1, a654=1, a655=1, a656=1, a657=1, a658=1, a659=1, a660=1, a661=1, a662=1, a663=1, a664=1, a665=1, a666=1, a667=1, a668=1, a669=1, a670=1, a671=1, a672=1, a673=1, a674=1, a675=1, a676=1, a677=1, a678=1, a679=1, a680=1, a681=1, a682=1, a683=1, a684=1, a685=1, a686=1, a687=1, a688=1, a689=1, a690=1, a691=1, a692=1, a693=1, a694=1, a695=1, a696=1, a697=1, a698=1, a699=1, a700=1, a701=1, a702=1, a703=1, a704=1, a705=1, a706=1, a707=1, a708=1, a709=1, a710=1, a711=1, a712=1, a713=1, a714=1, a715=1, a716=1, a717=1, a718=1, a719=1, a720=1, a721=1, a722=1, a723=1, a724=1, a725=1, a726=1, a727=1, a728=1, a729=1, a730=1, a731=1, a732=1, a733=1, a734=1, a735=1, a736=1, a737=1, a738=1, a739=1, a740=1, a741=1, a742=1, a743=1, a744=1, a745=1, a746=1, a747=1, a748=1, a749=1, a750=1, a751=1, a752=1, a753=1, a754=1, a755=1, a756=1, a757=1, a758=1, a759=1, a760=1, a761=1, a762=1, a763=1, a764=1, a765=1, a766=1, a767=1, a768=1, a769=1, a770=1, a771=1, a772=1, a773=1, a774=1, a775=1, a776=1, a777=1, a778=1, a779=1, a780=1, a781=1, a782=1, a783=1, a784=1, a785=1, a786=1, a787=1, a788=1, a789=1, a790=1, a791=1, a792=1, a793=1, a794=1, a795=1, a796=1, a797=1, a798=1, a799=1, a800=1, a801=1, a802=1, a803=1, a804=1, a805=1, a806=1, a807=1, a808=1, a809=1, a810=1, a811=1, a812=1, a813=1, a814=1, a815=1, a816=1, a817=1, a818=1, a819=1, a820=1, a821=1, a822=1, a823=1, a824=1, a825=1, a826=1, a827=1, a828=1, a829=1, a830=1, a831=1, a832=1, a833=1, a834=1, a835=1, a836=1, a837=1, a838=1, a839=1, a840=1, a841=1, a842=1, a843=1, a844=1, a845=1, a846=1, a847=1, a848=1, a849=1, a850=1, a851=1, a852=1, a853=1, a854=1, a855=1, a856=1, a857=1, a858=1, a859=1, a860=1, a861=1, a862=1, a863=1, a864=1, a865=1, a866=1, a867=1, a868=1, a869=1, a870=1, a871=1, a872=1, a873=1, a874=1, a875=1, a876=1, a877=1, a878=1, a879=1, a880=1, a881=1, a882=1, a883=1, a884=1, a885=1, a886=1, a887=1, a888=1, a889=1, a890=1, a891=1, a892=1, a893=1, a894=1, a895=1, a896=1, a897=1, a898=1, a899=1, a900=1, a901=1, a902=1, a903=1, a904=1, a905=1, a906=1, a907=1, a908=1, a909=1, a910=1, a911=1, a912=1, a913=1, a914=1, a915=1, a916=1, a917=1, a918=1, a919=1, a920=1, a921=1, a922=1, a923=1, a924=1, a925=1, a926=1, a927=1, a928=1, a929=1, a930=1, a931=1, a932=1, a933=1, a934=1, a935=1, a936=1, a937=1, a938=1, a939=1, a940=1, a941=1, a942=1, a943=1, a944=1, a945=1, a946=1, a947=1, a948=1, a949=1, a950=1, a951=1, a952=1, a953=1, a954=1, a955=1, a956=1, a957=1, a958=1, a959=1, a960=1, a961=1, a962=1, a963=1, a964=1, a965=1, a966=1, a967=1, a968=1, a969=1, a970=1, a971=1, a972=1, a973=1, a974=1, a975=1, a976=1, a977=1, a978=1, a979=1, a980=1, a981=1, a982=1, a983=1, a984=1, a985=1, a986=1, a987=1, a988=1, a989=1, a990=1, a991=1, a992=1, a993=1, a994=1, a995=1, a996=1, a997=1, a998=1, a999=1, a1000=1, a1001=1, a1002=1, a1003=1, a1004=1, a1005=1, a1006=1, a1007=1, a1008=1, a1009=1, a1010=1, a1011=1, a1012=1, a1013=1, a1014=1, a1015=1, a1016=1, a1017=1, a1018=1, a1019=1, a1020=1, a1021=1, a1022=1, a1023=1",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: large-generated - large dictionary key" {
  match
    parse_dictionary(
      "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=1",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: large-generated - large list" {
  match
    parse_list(
      "a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64, a65, a66, a67, a68, a69, a70, a71, a72, a73, a74, a75, a76, a77, a78, a79, a80, a81, a82, a83, a84, a85, a86, a87, a88, a89, a90, a91, a92, a93, a94, a95, a96, a97, a98, a99, a100, a101, a102, a103, a104, a105, a106, a107, a108, a109, a110, a111, a112, a113, a114, a115, a116, a117, a118, a119, a120, a121, a122, a123, a124, a125, a126, a127, a128, a129, a130, a131, a132, a133, a134, a135, a136, a137, a138, a139, a140, a141, a142, a143, a144, a145, a146, a147, a148, a149, a150, a151, a152, a153, a154, a155, a156, a157, a158, a159, a160, a161, a162, a163, a164, a165, a166, a167, a168, a169, a170, a171, a172, a173, a174, a175, a176, a177, a178, a179, a180, a181, a182, a183, a184, a185, a186, a187, a188, a189, a190, a191, a192, a193, a194, a195, a196, a197, a198, a199, a200, a201, a202, a203, a204, a205, a206, a207, a208, a209, a210, a211, a212, a213, a214, a215, a216, a217, a218, a219, a220, a221, a222, a223, a224, a225, a226, a227, a228, a229, a230, a231, a232, a233, a234, a235, a236, a237, a238, a239, a240, a241, a242, a243, a244, a245, a246, a247, a248, a249, a250, a251, a252, a253, a254, a255, a256, a257, a258, a259, a260, a261, a262, a263, a264, a265, a266, a267, a268, a269, a270, a271, a272, a273, a274, a275, a276, a277, a278, a279, a280, a281, a282, a283, a284, a285, a286, a287, a288, a289, a290, a291, a292, a293, a294, a295, a296, a297, a298, a299, a300, a301, a302, a303, a304, a305, a306, a307, a308, a309, a310, a311, a312, a313, a314, a315, a316, a317, a318, a319, a320, a321, a322, a323, a324, a325, a326, a327, a328, a329, a330, a331, a332, a333, a334, a335, a336, a337, a338, a339, a340, a341, a342, a343, a344, a345, a346, a347, a348, a349, a350, a351, a352, a353, a354, a355, a356, a357, a358, a359, a360, a361, a362, a363, a364, a365, a366, a367, a368, a369, a370, a371, a372, a373, a374, a375, a376, a377, a378, a379, a380, a381, a382, a383, a384, a385, a386, a387, a388, a389, a390, a391, a392, a393, a394, a395, a396, a397, a398, a399, a400, a401, a402, a403, a404, a405, a406, a407, a408, a409, a410, a411, a412, a413, a414, a415, a416, a417, a418, a419, a420, a421, a422, a423, a424, a425, a426, a427, a428, a429, a430, a431, a432, a433, a434, a435, a436, a437, a438, a439, a440, a441, a442, a443, a444, a445, a446, a447, a448, a449, a450, a451, a452, a453, a454, a455, a456, a457, a458, a459, a460, a461, a462, a463, a464, a465, a466, a467, a468, a469, a470, a471, a472, a473, a474, a475, a476, a477, a478, a479, a480, a481, a482, a483, a484, a485, a486, a487, a488, a489, a490, a491, a492, a493, a494, a495, a496, a497, a498, a499, a500, a501, a502, a503, a504, a505, a506, a507, a508, a509, a510, a511, a512, a513, a514, a515, a516, a517, a518, a519, a520, a521, a522, a523, a524, a525, a526, a527, a528, a529, a530, a531, a532, a533, a534, a535, a536, a537, a538, a539, a540, a541, a542, a543, a544, a545, a546, a547, a548, a549, a550, a551, a552, a553, a554, a555, a556, a557, a558, a559, a560, a561, a562, a563, a564, a565, a566, a567, a568, a569, a570, a571, a572, a573, a574, a575, a576, a577, a578, a579, a580, a581, a582, a583, a584, a585, a586, a587, a588, a589, a590, a591, a592, a593, a594, a595, a596, a597, a598, a599, a600, a601, a602, a603, a604, a605, a606, a607, a608, a609, a610, a611, a612, a613, a614, a615, a616, a617, a618, a619, a620, a621, a622, a623, a624, a625, a626, a627, a628, a629, a630, a631, a632, a633, a634, a635, a636, a637, a638, a639, a640, a641, a642, a643, a644, a645, a646, a647, a648, a649, a650, a651, a652, a653, a654, a655, a656, a657, a658, a659, a660, a661, a662, a663, a664, a665, a666, a667, a668, a669, a670, a671, a672, a673, a674, a675, a676, a677, a678, a679, a680, a681, a682, a683, a684, a685, a686, a687, a688, a689, a690, a691, a692, a693, a694, a695, a696, a697, a698, a699, a700, a701, a702, a703, a704, a705, a706, a707, a708, a709, a710, a711, a712, a713, a714, a715, a716, a717, a718, a719, a720, a721, a722, a723, a724, a725, a726, a727, a728, a729, a730, a731, a732, a733, a734, a735, a736, a737, a738, a739, a740, a741, a742, a743, a744, a745, a746, a747, a748, a749, a750, a751, a752, a753, a754, a755, a756, a757, a758, a759, a760, a761, a762, a763, a764, a765, a766, a767, a768, a769, a770, a771, a772, a773, a774, a775, a776, a777, a778, a779, a780, a781, a782, a783, a784, a785, a786, a787, a788, a789, a790, a791, a792, a793, a794, a795, a796, a797, a798, a799, a800, a801, a802, a803, a804, a805, a806, a807, a808, a809, a810, a811, a812, a813, a814, a815, a816, a817, a818, a819, a820, a821, a822, a823, a824, a825, a826, a827, a828, a829, a830, a831, a832, a833, a834, a835, a836, a837, a838, a839, a840, a841, a842, a843, a844, a845, a846, a847, a848, a849, a850, a851, a852, a853, a854, a855, a856, a857, a858, a859, a860, a861, a862, a863, a864, a865, a866, a867, a868, a869, a870, a871, a872, a873, a874, a875, a876, a877, a878, a879, a880, a881, a882, a883, a884, a885, a886, a887, a888, a889, a890, a891, a892, a893, a894, a895, a896, a897, a898, a899, a900, a901, a902, a903, a904, a905, a906, a907, a908, a909, a910, a911, a912, a913, a914, a915, a916, a917, a918, a919, a920, a921, a922, a923, a924, a925, a926, a927, a928, a929, a930, a931, a932, a933, a934, a935, a936, a937, a938, a939, a940, a941, a942, a943, a944, a945, a946, a947, a948, a949, a950, a951, a952, a953, a954, a955, a956, a957, a958, a959, a960, a961, a962, a963, a964, a965, a966, a967, a968, a969, a970, a971, a972, a973, a974, a975, a976, a977, a978, a979, a980, a981, a982, a983, a984, a985, a986, a987, a988, a989, a990, a991, a992, a993, a994, a995, a996, a997, a998, a999, a1000, a1001, a1002, a1003, a1004, a1005, a1006, a1007, a1008, a1009, a1010, a1011, a1012, a1013, a1014, a1015, a1016, a1017, a1018, a1019, a1020, a1021, a1022, a1023",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: large-generated - large parameterised list" {
  match
    parse_list(
      "foo;a0=1, foo;a1=1, foo;a2=1, foo;a3=1, foo;a4=1, foo;a5=1, foo;a6=1, foo;a7=1, foo;a8=1, foo;a9=1, foo;a10=1, foo;a11=1, foo;a12=1, foo;a13=1, foo;a14=1, foo;a15=1, foo;a16=1, foo;a17=1, foo;a18=1, foo;a19=1, foo;a20=1, foo;a21=1, foo;a22=1, foo;a23=1, foo;a24=1, foo;a25=1, foo;a26=1, foo;a27=1, foo;a28=1, foo;a29=1, foo;a30=1, foo;a31=1, foo;a32=1, foo;a33=1, foo;a34=1, foo;a35=1, foo;a36=1, foo;a37=1, foo;a38=1, foo;a39=1, foo;a40=1, foo;a41=1, foo;a42=1, foo;a43=1, foo;a44=1, foo;a45=1, foo;a46=1, foo;a47=1, foo;a48=1, foo;a49=1, foo;a50=1, foo;a51=1, foo;a52=1, foo;a53=1, foo;a54=1, foo;a55=1, foo;a56=1, foo;a57=1, foo;a58=1, foo;a59=1, foo;a60=1, foo;a61=1, foo;a62=1, foo;a63=1, foo;a64=1, foo;a65=1, foo;a66=1, foo;a67=1, foo;a68=1, foo;a69=1, foo;a70=1, foo;a71=1, foo;a72=1, foo;a73=1, foo;a74=1, foo;a75=1, foo;a76=1, foo;a77=1, foo;a78=1, foo;a79=1, foo;a80=1, foo;a81=1, foo;a82=1, foo;a83=1, foo;a84=1, foo;a85=1, foo;a86=1, foo;a87=1, foo;a88=1, foo;a89=1, foo;a90=1, foo;a91=1, foo;a92=1, foo;a93=1, foo;a94=1, foo;a95=1, foo;a96=1, foo;a97=1, foo;a98=1, foo;a99=1, foo;a100=1, foo;a101=1, foo;a102=1, foo;a103=1, foo;a104=1, foo;a105=1, foo;a106=1, foo;a107=1, foo;a108=1, foo;a109=1, foo;a110=1, foo;a111=1, foo;a112=1, foo;a113=1, foo;a114=1, foo;a115=1, foo;a116=1, foo;a117=1, foo;a118=1, foo;a119=1, foo;a120=1, foo;a121=1, foo;a122=1, foo;a123=1, foo;a124=1, foo;a125=1, foo;a126=1, foo;a127=1, foo;a128=1, foo;a129=1, foo;a130=1, foo;a131=1, foo;a132=1, foo;a133=1, foo;a134=1, foo;a135=1, foo;a136=1, foo;a137=1, foo;a138=1, foo;a139=1, foo;a140=1, foo;a141=1, foo;a142=1, foo;a143=1, foo;a144=1, foo;a145=1, foo;a146=1, foo;a147=1, foo;a148=1, foo;a149=1, foo;a150=1, foo;a151=1, foo;a152=1, foo;a153=1, foo;a154=1, foo;a155=1, foo;a156=1, foo;a157=1, foo;a158=1, foo;a159=1, foo;a160=1, foo;a161=1, foo;a162=1, foo;a163=1, foo;a164=1, foo;a165=1, foo;a166=1, foo;a167=1, foo;a168=1, foo;a169=1, foo;a170=1, foo;a171=1, foo;a172=1, foo;a173=1, foo;a174=1, foo;a175=1, foo;a176=1, foo;a177=1, foo;a178=1, foo;a179=1, foo;a180=1, foo;a181=1, foo;a182=1, foo;a183=1, foo;a184=1, foo;a185=1, foo;a186=1, foo;a187=1, foo;a188=1, foo;a189=1, foo;a190=1, foo;a191=1, foo;a192=1, foo;a193=1, foo;a194=1, foo;a195=1, foo;a196=1, foo;a197=1, foo;a198=1, foo;a199=1, foo;a200=1, foo;a201=1, foo;a202=1, foo;a203=1, foo;a204=1, foo;a205=1, foo;a206=1, foo;a207=1, foo;a208=1, foo;a209=1, foo;a210=1, foo;a211=1, foo;a212=1, foo;a213=1, foo;a214=1, foo;a215=1, foo;a216=1, foo;a217=1, foo;a218=1, foo;a219=1, foo;a220=1, foo;a221=1, foo;a222=1, foo;a223=1, foo;a224=1, foo;a225=1, foo;a226=1, foo;a227=1, foo;a228=1, foo;a229=1, foo;a230=1, foo;a231=1, foo;a232=1, foo;a233=1, foo;a234=1, foo;a235=1, foo;a236=1, foo;a237=1, foo;a238=1, foo;a239=1, foo;a240=1, foo;a241=1, foo;a242=1, foo;a243=1, foo;a244=1, foo;a245=1, foo;a246=1, foo;a247=1, foo;a248=1, foo;a249=1, foo;a250=1, foo;a251=1, foo;a252=1, foo;a253=1, foo;a254=1, foo;a255=1, foo;a256=1, foo;a257=1, foo;a258=1, foo;a259=1, foo;a260=1, foo;a261=1, foo;a262=1, foo;a263=1, foo;a264=1, foo;a265=1, foo;a266=1, foo;a267=1, foo;a268=1, foo;a269=1, foo;a270=1, foo;a271=1, foo;a272=1, foo;a273=1, foo;a274=1, foo;a275=1, foo;a276=1, foo;a277=1, foo;a278=1, foo;a279=1, foo;a280=1, foo;a281=1, foo;a282=1, foo;a283=1, foo;a284=1, foo;a285=1, foo;a286=1, foo;a287=1, foo;a288=1, foo;a289=1, foo;a290=1, foo;a291=1, foo;a292=1, foo;a293=1, foo;a294=1, foo;a295=1, foo;a296=1, foo;a297=1, foo;a298=1, foo;a299=1, foo;a300=1, foo;a301=1, foo;a302=1, foo;a303=1, foo;a304=1, foo;a305=1, foo;a306=1, foo;a307=1, foo;a308=1, foo;a309=1, foo;a310=1, foo;a311=1, foo;a312=1, foo;a313=1, foo;a314=1, foo;a315=1, foo;a316=1, foo;a317=1, foo;a318=1, foo;a319=1, foo;a320=1, foo;a321=1, foo;a322=1, foo;a323=1, foo;a324=1, foo;a325=1, foo;a326=1, foo;a327=1, foo;a328=1, foo;a329=1, foo;a330=1, foo;a331=1, foo;a332=1, foo;a333=1, foo;a334=1, foo;a335=1, foo;a336=1, foo;a337=1, foo;a338=1, foo;a339=1, foo;a340=1, foo;a341=1, foo;a342=1, foo;a343=1, foo;a344=1, foo;a345=1, foo;a346=1, foo;a347=1, foo;a348=1, foo;a349=1, foo;a350=1, foo;a351=1, foo;a352=1, foo;a353=1, foo;a354=1, foo;a355=1, foo;a356=1, foo;a357=1, foo;a358=1, foo;a359=1, foo;a360=1, foo;a361=1, foo;a362=1, foo;a363=1, foo;a364=1, foo;a365=1, foo;a366=1, foo;a367=1, foo;a368=1, foo;a369=1, foo;a370=1, foo;a371=1, foo;a372=1, foo;a373=1, foo;a374=1, foo;a375=1, foo;a376=1, foo;a377=1, foo;a378=1, foo;a379=1, foo;a380=1, foo;a381=1, foo;a382=1, foo;a383=1, foo;a384=1, foo;a385=1, foo;a386=1, foo;a387=1, foo;a388=1, foo;a389=1, foo;a390=1, foo;a391=1, foo;a392=1, foo;a393=1, foo;a394=1, foo;a395=1, foo;a396=1, foo;a397=1, foo;a398=1, foo;a399=1, foo;a400=1, foo;a401=1, foo;a402=1, foo;a403=1, foo;a404=1, foo;a405=1, foo;a406=1, foo;a407=1, foo;a408=1, foo;a409=1, foo;a410=1, foo;a411=1, foo;a412=1, foo;a413=1, foo;a414=1, foo;a415=1, foo;a416=1, foo;a417=1, foo;a418=1, foo;a419=1, foo;a420=1, foo;a421=1, foo;a422=1, foo;a423=1, foo;a424=1, foo;a425=1, foo;a426=1, foo;a427=1, foo;a428=1, foo;a429=1, foo;a430=1, foo;a431=1, foo;a432=1, foo;a433=1, foo;a434=1, foo;a435=1, foo;a436=1, foo;a437=1, foo;a438=1, foo;a439=1, foo;a440=1, foo;a441=1, foo;a442=1, foo;a443=1, foo;a444=1, foo;a445=1, foo;a446=1, foo;a447=1, foo;a448=1, foo;a449=1, foo;a450=1, foo;a451=1, foo;a452=1, foo;a453=1, foo;a454=1, foo;a455=1, foo;a456=1, foo;a457=1, foo;a458=1, foo;a459=1, foo;a460=1, foo;a461=1, foo;a462=1, foo;a463=1, foo;a464=1, foo;a465=1, foo;a466=1, foo;a467=1, foo;a468=1, foo;a469=1, foo;a470=1, foo;a471=1, foo;a472=1, foo;a473=1, foo;a474=1, foo;a475=1, foo;a476=1, foo;a477=1, foo;a478=1, foo;a479=1, foo;a480=1, foo;a481=1, foo;a482=1, foo;a483=1, foo;a484=1, foo;a485=1, foo;a486=1, foo;a487=1, foo;a488=1, foo;a489=1, foo;a490=1, foo;a491=1, foo;a492=1, foo;a493=1, foo;a494=1, foo;a495=1, foo;a496=1, foo;a497=1, foo;a498=1, foo;a499=1, foo;a500=1, foo;a501=1, foo;a502=1, foo;a503=1, foo;a504=1, foo;a505=1, foo;a506=1, foo;a507=1, foo;a508=1, foo;a509=1, foo;a510=1, foo;a511=1, foo;a512=1, foo;a513=1, foo;a514=1, foo;a515=1, foo;a516=1, foo;a517=1, foo;a518=1, foo;a519=1, foo;a520=1, foo;a521=1, foo;a522=1, foo;a523=1, foo;a524=1, foo;a525=1, foo;a526=1, foo;a527=1, foo;a528=1, foo;a529=1, foo;a530=1, foo;a531=1, foo;a532=1, foo;a533=1, foo;a534=1, foo;a535=1, foo;a536=1, foo;a537=1, foo;a538=1, foo;a539=1, foo;a540=1, foo;a541=1, foo;a542=1, foo;a543=1, foo;a544=1, foo;a545=1, foo;a546=1, foo;a547=1, foo;a548=1, foo;a549=1, foo;a550=1, foo;a551=1, foo;a552=1, foo;a553=1, foo;a554=1, foo;a555=1, foo;a556=1, foo;a557=1, foo;a558=1, foo;a559=1, foo;a560=1, foo;a561=1, foo;a562=1, foo;a563=1, foo;a564=1, foo;a565=1, foo;a566=1, foo;a567=1, foo;a568=1, foo;a569=1, foo;a570=1, foo;a571=1, foo;a572=1, foo;a573=1, foo;a574=1, foo;a575=1, foo;a576=1, foo;a577=1, foo;a578=1, foo;a579=1, foo;a580=1, foo;a581=1, foo;a582=1, foo;a583=1, foo;a584=1, foo;a585=1, foo;a586=1, foo;a587=1, foo;a588=1, foo;a589=1, foo;a590=1, foo;a591=1, foo;a592=1, foo;a593=1, foo;a594=1, foo;a595=1, foo;a596=1, foo;a597=1, foo;a598=1, foo;a599=1, foo;a600=1, foo;a601=1, foo;a602=1, foo;a603=1, foo;a604=1, foo;a605=1, foo;a606=1, foo;a607=1, foo;a608=1, foo;a609=1, foo;a610=1, foo;a611=1, foo;a612=1, foo;a613=1, foo;a614=1, foo;a615=1, foo;a616=1, foo;a617=1, foo;a618=1, foo;a619=1, foo;a620=1, foo;a621=1, foo;a622=1, foo;a623=1, foo;a624=1, foo;a625=1, foo;a626=1, foo;a627=1, foo;a628=1, foo;a629=1, foo;a630=1, foo;a631=1, foo;a632=1, foo;a633=1, foo;a634=1, foo;a635=1, foo;a636=1, foo;a637=1, foo;a638=1, foo;a639=1, foo;a640=1, foo;a641=1, foo;a642=1, foo;a643=1, foo;a644=1, foo;a645=1, foo;a646=1, foo;a647=1, foo;a648=1, foo;a649=1, foo;a650=1, foo;a651=1, foo;a652=1, foo;a653=1, foo;a654=1, foo;a655=1, foo;a656=1, foo;a657=1, foo;a658=1, foo;a659=1, foo;a660=1, foo;a661=1, foo;a662=1, foo;a663=1, foo;a664=1, foo;a665=1, foo;a666=1, foo;a667=1, foo;a668=1, foo;a669=1, foo;a670=1, foo;a671=1, foo;a672=1, foo;a673=1, foo;a674=1, foo;a675=1, foo;a676=1, foo;a677=1, foo;a678=1, foo;a679=1, foo;a680=1, foo;a681=1, foo;a682=1, foo;a683=1, foo;a684=1, foo;a685=1, foo;a686=1, foo;a687=1, foo;a688=1, foo;a689=1, foo;a690=1, foo;a691=1, foo;a692=1, foo;a693=1, foo;a694=1, foo;a695=1, foo;a696=1, foo;a697=1, foo;a698=1, foo;a699=1, foo;a700=1, foo;a701=1, foo;a702=1, foo;a703=1, foo;a704=1, foo;a705=1, foo;a706=1, foo;a707=1, foo;a708=1, foo;a709=1, foo;a710=1, foo;a711=1, foo;a712=1, foo;a713=1, foo;a714=1, foo;a715=1, foo;a716=1, foo;a717=1, foo;a718=1, foo;a719=1, foo;a720=1, foo;a721=1, foo;a722=1, foo;a723=1, foo;a724=1, foo;a725=1, foo;a726=1, foo;a727=1, foo;a728=1, foo;a729=1, foo;a730=1, foo;a731=1, foo;a732=1, foo;a733=1, foo;a734=1, foo;a735=1, foo;a736=1, foo;a737=1, foo;a738=1, foo;a739=1, foo;a740=1, foo;a741=1, foo;a742=1, foo;a743=1, foo;a744=1, foo;a745=1, foo;a746=1, foo;a747=1, foo;a748=1, foo;a749=1, foo;a750=1, foo;a751=1, foo;a752=1, foo;a753=1, foo;a754=1, foo;a755=1, foo;a756=1, foo;a757=1, foo;a758=1, foo;a759=1, foo;a760=1, foo;a761=1, foo;a762=1, foo;a763=1, foo;a764=1, foo;a765=1, foo;a766=1, foo;a767=1, foo;a768=1, foo;a769=1, foo;a770=1, foo;a771=1, foo;a772=1, foo;a773=1, foo;a774=1, foo;a775=1, foo;a776=1, foo;a777=1, foo;a778=1, foo;a779=1, foo;a780=1, foo;a781=1, foo;a782=1, foo;a783=1, foo;a784=1, foo;a785=1, foo;a786=1, foo;a787=1, foo;a788=1, foo;a789=1, foo;a790=1, foo;a791=1, foo;a792=1, foo;a793=1, foo;a794=1, foo;a795=1, foo;a796=1, foo;a797=1, foo;a798=1, foo;a799=1, foo;a800=1, foo;a801=1, foo;a802=1, foo;a803=1, foo;a804=1, foo;a805=1, foo;a806=1, foo;a807=1, foo;a808=1, foo;a809=1, foo;a810=1, foo;a811=1, foo;a812=1, foo;a813=1, foo;a814=1, foo;a815=1, foo;a816=1, foo;a817=1, foo;a818=1, foo;a819=1, foo;a820=1, foo;a821=1, foo;a822=1, foo;a823=1, foo;a824=1, foo;a825=1, foo;a826=1, foo;a827=1, foo;a828=1, foo;a829=1, foo;a830=1, foo;a831=1, foo;a832=1, foo;a833=1, foo;a834=1, foo;a835=1, foo;a836=1, foo;a837=1, foo;a838=1, foo;a839=1, foo;a840=1, foo;a841=1, foo;a842=1, foo;a843=1, foo;a844=1, foo;a845=1, foo;a846=1, foo;a847=1, foo;a848=1, foo;a849=1, foo;a850=1, foo;a851=1, foo;a852=1, foo;a853=1, foo;a854=1, foo;a855=1, foo;a856=1, foo;a857=1, foo;a858=1, foo;a859=1, foo;a860=1, foo;a861=1, foo;a862=1, foo;a863=1, foo;a864=1, foo;a865=1, foo;a866=1, foo;a867=1, foo;a868=1, foo;a869=1, foo;a870=1, foo;a871=1, foo;a872=1, foo;a873=1, foo;a874=1, foo;a875=1, foo;a876=1, foo;a877=1, foo;a878=1, foo;a879=1, foo;a880=1, foo;a881=1, foo;a882=1, foo;a883=1, foo;a884=1, foo;a885=1, foo;a886=1, foo;a887=1, foo;a888=1, foo;a889=1, foo;a890=1, foo;a891=1, foo;a892=1, foo;a893=1, foo;a894=1, foo;a895=1, foo;a896=1, foo;a897=1, foo;a898=1, foo;a899=1, foo;a900=1, foo;a901=1, foo;a902=1, foo;a903=1, foo;a904=1, foo;a905=1, foo;a906=1, foo;a907=1, foo;a908=1, foo;a909=1, foo;a910=1, foo;a911=1, foo;a912=1, foo;a913=1, foo;a914=1, foo;a915=1, foo;a916=1, foo;a917=1, foo;a918=1, foo;a919=1, foo;a920=1, foo;a921=1, foo;a922=1, foo;a923=1, foo;a924=1, foo;a925=1, foo;a926=1, foo;a927=1, foo;a928=1, foo;a929=1, foo;a930=1, foo;a931=1, foo;a932=1, foo;a933=1, foo;a934=1, foo;a935=1, foo;a936=1, foo;a937=1, foo;a938=1, foo;a939=1, foo;a940=1, foo;a941=1, foo;a942=1, foo;a943=1, foo;a944=1, foo;a945=1, foo;a946=1, foo;a947=1, foo;a948=1, foo;a949=1, foo;a950=1, foo;a951=1, foo;a952=1, foo;a953=1, foo;a954=1, foo;a955=1, foo;a956=1, foo;a957=1, foo;a958=1, foo;a959=1, foo;a960=1, foo;a961=1, foo;a962=1, foo;a963=1, foo;a964=1, foo;a965=1, foo;a966=1, foo;a967=1, foo;a968=1, foo;a969=1, foo;a970=1, foo;a971=1, foo;a972=1, foo;a973=1, foo;a974=1, foo;a975=1, foo;a976=1, foo;a977=1, foo;a978=1, foo;a979=1, foo;a980=1, foo;a981=1, foo;a982=1, foo;a983=1, foo;a984=1, foo;a985=1, foo;a986=1, foo;a987=1, foo;a988=1, foo;a989=1, foo;a990=1, foo;a991=1, foo;a992=1, foo;a993=1, foo;a994=1, foo;a995=1, foo;a996=1, foo;a997=1, foo;a998=1, foo;a999=1, foo;a1000=1, foo;a1001=1, foo;a1002=1, foo;a1003=1, foo;a1004=1, foo;a1005=1, foo;a1006=1, foo;a1007=1, foo;a1008=1, foo;a1009=1, foo;a1010=1, foo;a1011=1, foo;a1012=1, foo;a1013=1, foo;a1014=1, foo;a1015=1, foo;a1016=1, foo;a1017=1, foo;a1018=1, foo;a1019=1, foo;a1020=1, foo;a1021=1, foo;a1022=1, foo;a1023=1",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: large-generated - large params" {
  match
    parse_list(
      "foo;a0=1;a1=1;a2=1;a3=1;a4=1;a5=1;a6=1;a7=1;a8=1;a9=1;a10=1;a11=1;a12=1;a13=1;a14=1;a15=1;a16=1;a17=1;a18=1;a19=1;a20=1;a21=1;a22=1;a23=1;a24=1;a25=1;a26=1;a27=1;a28=1;a29=1;a30=1;a31=1;a32=1;a33=1;a34=1;a35=1;a36=1;a37=1;a38=1;a39=1;a40=1;a41=1;a42=1;a43=1;a44=1;a45=1;a46=1;a47=1;a48=1;a49=1;a50=1;a51=1;a52=1;a53=1;a54=1;a55=1;a56=1;a57=1;a58=1;a59=1;a60=1;a61=1;a62=1;a63=1;a64=1;a65=1;a66=1;a67=1;a68=1;a69=1;a70=1;a71=1;a72=1;a73=1;a74=1;a75=1;a76=1;a77=1;a78=1;a79=1;a80=1;a81=1;a82=1;a83=1;a84=1;a85=1;a86=1;a87=1;a88=1;a89=1;a90=1;a91=1;a92=1;a93=1;a94=1;a95=1;a96=1;a97=1;a98=1;a99=1;a100=1;a101=1;a102=1;a103=1;a104=1;a105=1;a106=1;a107=1;a108=1;a109=1;a110=1;a111=1;a112=1;a113=1;a114=1;a115=1;a116=1;a117=1;a118=1;a119=1;a120=1;a121=1;a122=1;a123=1;a124=1;a125=1;a126=1;a127=1;a128=1;a129=1;a130=1;a131=1;a132=1;a133=1;a134=1;a135=1;a136=1;a137=1;a138=1;a139=1;a140=1;a141=1;a142=1;a143=1;a144=1;a145=1;a146=1;a147=1;a148=1;a149=1;a150=1;a151=1;a152=1;a153=1;a154=1;a155=1;a156=1;a157=1;a158=1;a159=1;a160=1;a161=1;a162=1;a163=1;a164=1;a165=1;a166=1;a167=1;a168=1;a169=1;a170=1;a171=1;a172=1;a173=1;a174=1;a175=1;a176=1;a177=1;a178=1;a179=1;a180=1;a181=1;a182=1;a183=1;a184=1;a185=1;a186=1;a187=1;a188=1;a189=1;a190=1;a191=1;a192=1;a193=1;a194=1;a195=1;a196=1;a197=1;a198=1;a199=1;a200=1;a201=1;a202=1;a203=1;a204=1;a205=1;a206=1;a207=1;a208=1;a209=1;a210=1;a211=1;a212=1;a213=1;a214=1;a215=1;a216=1;a217=1;a218=1;a219=1;a220=1;a221=1;a222=1;a223=1;a224=1;a225=1;a226=1;a227=1;a228=1;a229=1;a230=1;a231=1;a232=1;a233=1;a234=1;a235=1;a236=1;a237=1;a238=1;a239=1;a240=1;a241=1;a242=1;a243=1;a244=1;a245=1;a246=1;a247=1;a248=1;a249=1;a250=1;a251=1;a252=1;a253=1;a254=1;a255=1",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: large-generated - large param key" {
  match
    parse_list(
      "foo;aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa=1",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: large-generated - large string" {
  match
    parse_item(
      "\"================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================\"",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: large-generated - large escaped string" {
  match
    parse_item(
      "\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\"",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: large-generated - large token" {
  match
    parse_item(
      "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: large-generated - large byte sequence" {
  match
    parse_item(
      ":YWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYQ==:",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: large-generated - large inner list" {
  match
    parse_list(
      "(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255)",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - basic list" {
  match parse_list("1, 42") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - empty list" {
  match parse_list("") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - leading SP list" {
  match parse_list("  42, 43") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "42, 43")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - single item list" {
  match parse_list("42") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - no whitespace list" {
  match parse_list("1,42") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "1, 42")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - extra whitespace list" {
  match parse_list("1 , 42") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "1, 42")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - tab separated list" {
  match parse_list("1\t,\t42") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "1, 42")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - two line list" {
  match parse_list("1, 42") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "1, 42")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - trailing comma list" {
  expect_parse_list_error("1, 42,")
}

///|
test "httpwg: list - empty item list" {
  expect_parse_list_error("1,,42")
}

///|
test "httpwg: list - empty item list (multiple field lines)" {
  expect_parse_list_error("1, , 42")
}

///|
test "httpwg: listlist - basic list of lists" {
  match parse_list("(1 2), (42 43)") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: listlist - single item list of lists" {
  match parse_list("(42)") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: listlist - empty item list of lists" {
  match parse_list("()") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: listlist - empty middle item list of lists" {
  match parse_list("(1),(),(42)") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "(1), (), (42)")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: listlist - extra whitespace list of lists" {
  match parse_list("(  1  42  )") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "(1 42)")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: listlist - wrong whitespace list of lists" {
  expect_parse_list_error("(1\t 42)")
}

///|
test "httpwg: listlist - no trailing parenthesis list of lists" {
  expect_parse_list_error("(1 42")
}

///|
test "httpwg: listlist - no trailing parenthesis middle list of lists" {
  expect_parse_list_error("(1 2, (42 43)")
}

///|
test "httpwg: listlist - no spaces in inner-list" {
  expect_parse_list_error("(abc\"def\"?0123*dXZ3*xyz)")
}

///|
test "httpwg: listlist - no closing parenthesis" {
  expect_parse_list_error("(")
}

///|
test "httpwg: listlist - nested inner lists" {
  expect_parse_list_error("((1))")
}

///|
test "httpwg: listlist - dictionary in inner list" {
  expect_parse_list_error("(a=1)")
}

///|
test "httpwg: number-generated - 1 digits of zero" {
  match parse_item("0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 1 digit small integer" {
  match parse_item("1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 1 digit large integer" {
  match parse_item("9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 2 digits of zero" {
  match parse_item("00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 2 digit small integer" {
  match parse_item("11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 2 digit large integer" {
  match parse_item("99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 3 digits of zero" {
  match parse_item("000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 3 digit small integer" {
  match parse_item("111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 3 digit large integer" {
  match parse_item("999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digits of zero" {
  match parse_item("0000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit small integer" {
  match parse_item("1111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit large integer" {
  match parse_item("9999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digits of zero" {
  match parse_item("00000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit small integer" {
  match parse_item("11111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit large integer" {
  match parse_item("99999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digits of zero" {
  match parse_item("000000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit small integer" {
  match parse_item("111111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit large integer" {
  match parse_item("999999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digits of zero" {
  match parse_item("0000000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit small integer" {
  match parse_item("1111111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit large integer" {
  match parse_item("9999999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digits of zero" {
  match parse_item("00000000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit small integer" {
  match parse_item("11111111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit large integer" {
  match parse_item("99999999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digits of zero" {
  match parse_item("000000000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit small integer" {
  match parse_item("111111111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit large integer" {
  match parse_item("999999999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digits of zero" {
  match parse_item("0000000000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit small integer" {
  match parse_item("1111111111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit large integer" {
  match parse_item("9999999999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digits of zero" {
  match parse_item("00000000000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit small integer" {
  match parse_item("11111111111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit large integer" {
  match parse_item("99999999999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digits of zero" {
  match parse_item("000000000000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit small integer" {
  match parse_item("111111111111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit large integer" {
  match parse_item("999999999999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digits of zero" {
  match parse_item("0000000000000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit small integer" {
  match parse_item("1111111111111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit large integer" {
  match parse_item("9999999999999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 14 digits of zero" {
  match parse_item("00000000000000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 14 digit small integer" {
  match parse_item("11111111111111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 14 digit large integer" {
  match parse_item("99999999999999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 15 digits of zero" {
  match parse_item("000000000000000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 15 digit small integer" {
  match parse_item("111111111111111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 15 digit large integer" {
  match parse_item("999999999999999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 2 digit 0, 1 fractional small decimal" {
  match parse_item("0.1") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 2 digit, 1 fractional 0 decimal" {
  match parse_item("1.0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 2 digit, 1 fractional small decimal" {
  match parse_item("1.1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 2 digit, 1 fractional large decimal" {
  match parse_item("9.9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 3 digit 0, 2 fractional small decimal" {
  match parse_item("0.11") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.11")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 3 digit, 2 fractional 0 decimal" {
  match parse_item("1.00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 3 digit, 2 fractional small decimal" {
  match parse_item("1.11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 3 digit, 2 fractional large decimal" {
  match parse_item("9.99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit 0, 3 fractional small decimal" {
  match parse_item("0.111") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.111")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit, 3 fractional 0 decimal" {
  match parse_item("1.000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit, 3 fractional small decimal" {
  match parse_item("1.111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit, 3 fractional large decimal" {
  match parse_item("9.999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 3 digit 0, 1 fractional small decimal" {
  match parse_item("00.1") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 3 digit, 1 fractional 0 decimal" {
  match parse_item("11.0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "11.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 3 digit, 1 fractional small decimal" {
  match parse_item("11.1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 3 digit, 1 fractional large decimal" {
  match parse_item("99.9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit 0, 2 fractional small decimal" {
  match parse_item("00.11") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.11")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit, 2 fractional 0 decimal" {
  match parse_item("11.00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "11.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit, 2 fractional small decimal" {
  match parse_item("11.11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit, 2 fractional large decimal" {
  match parse_item("99.99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit 0, 3 fractional small decimal" {
  match parse_item("00.111") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.111")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit, 3 fractional 0 decimal" {
  match parse_item("11.000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "11.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit, 3 fractional small decimal" {
  match parse_item("11.111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit, 3 fractional large decimal" {
  match parse_item("99.999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit 0, 1 fractional small decimal" {
  match parse_item("000.1") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit, 1 fractional 0 decimal" {
  match parse_item("111.0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit, 1 fractional small decimal" {
  match parse_item("111.1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 4 digit, 1 fractional large decimal" {
  match parse_item("999.9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit 0, 2 fractional small decimal" {
  match parse_item("000.11") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.11")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit, 2 fractional 0 decimal" {
  match parse_item("111.00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit, 2 fractional small decimal" {
  match parse_item("111.11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit, 2 fractional large decimal" {
  match parse_item("999.99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit 0, 3 fractional small decimal" {
  match parse_item("000.111") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.111")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit, 3 fractional 0 decimal" {
  match parse_item("111.000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit, 3 fractional small decimal" {
  match parse_item("111.111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit, 3 fractional large decimal" {
  match parse_item("999.999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit 0, 1 fractional small decimal" {
  match parse_item("0000.1") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit, 1 fractional 0 decimal" {
  match parse_item("1111.0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit, 1 fractional small decimal" {
  match parse_item("1111.1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 5 digit, 1 fractional large decimal" {
  match parse_item("9999.9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit 0, 2 fractional small decimal" {
  match parse_item("0000.11") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.11")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit, 2 fractional 0 decimal" {
  match parse_item("1111.00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit, 2 fractional small decimal" {
  match parse_item("1111.11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit, 2 fractional large decimal" {
  match parse_item("9999.99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit 0, 3 fractional small decimal" {
  match parse_item("0000.111") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.111")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit, 3 fractional 0 decimal" {
  match parse_item("1111.000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit, 3 fractional small decimal" {
  match parse_item("1111.111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit, 3 fractional large decimal" {
  match parse_item("9999.999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit 0, 1 fractional small decimal" {
  match parse_item("00000.1") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit, 1 fractional 0 decimal" {
  match parse_item("11111.0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "11111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit, 1 fractional small decimal" {
  match parse_item("11111.1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 6 digit, 1 fractional large decimal" {
  match parse_item("99999.9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit 0, 2 fractional small decimal" {
  match parse_item("00000.11") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.11")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit, 2 fractional 0 decimal" {
  match parse_item("11111.00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "11111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit, 2 fractional small decimal" {
  match parse_item("11111.11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit, 2 fractional large decimal" {
  match parse_item("99999.99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit 0, 3 fractional small decimal" {
  match parse_item("00000.111") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.111")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit, 3 fractional 0 decimal" {
  match parse_item("11111.000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "11111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit, 3 fractional small decimal" {
  match parse_item("11111.111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit, 3 fractional large decimal" {
  match parse_item("99999.999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit 0, 1 fractional small decimal" {
  match parse_item("000000.1") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit, 1 fractional 0 decimal" {
  match parse_item("111111.0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit, 1 fractional small decimal" {
  match parse_item("111111.1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 7 digit, 1 fractional large decimal" {
  match parse_item("999999.9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit 0, 2 fractional small decimal" {
  match parse_item("000000.11") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.11")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit, 2 fractional 0 decimal" {
  match parse_item("111111.00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit, 2 fractional small decimal" {
  match parse_item("111111.11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit, 2 fractional large decimal" {
  match parse_item("999999.99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit 0, 3 fractional small decimal" {
  match parse_item("000000.111") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.111")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit, 3 fractional 0 decimal" {
  match parse_item("111111.000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit, 3 fractional small decimal" {
  match parse_item("111111.111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit, 3 fractional large decimal" {
  match parse_item("999999.999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit 0, 1 fractional small decimal" {
  match parse_item("0000000.1") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit, 1 fractional 0 decimal" {
  match parse_item("1111111.0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit, 1 fractional small decimal" {
  match parse_item("1111111.1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 8 digit, 1 fractional large decimal" {
  match parse_item("9999999.9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit 0, 2 fractional small decimal" {
  match parse_item("0000000.11") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.11")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit, 2 fractional 0 decimal" {
  match parse_item("1111111.00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit, 2 fractional small decimal" {
  match parse_item("1111111.11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit, 2 fractional large decimal" {
  match parse_item("9999999.99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit 0, 3 fractional small decimal" {
  match parse_item("0000000.111") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.111")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit, 3 fractional 0 decimal" {
  match parse_item("1111111.000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit, 3 fractional small decimal" {
  match parse_item("1111111.111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit, 3 fractional large decimal" {
  match parse_item("9999999.999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit 0, 1 fractional small decimal" {
  match parse_item("00000000.1") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit, 1 fractional 0 decimal" {
  match parse_item("11111111.0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "11111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit, 1 fractional small decimal" {
  match parse_item("11111111.1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 9 digit, 1 fractional large decimal" {
  match parse_item("99999999.9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit 0, 2 fractional small decimal" {
  match parse_item("00000000.11") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.11")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit, 2 fractional 0 decimal" {
  match parse_item("11111111.00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "11111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit, 2 fractional small decimal" {
  match parse_item("11111111.11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit, 2 fractional large decimal" {
  match parse_item("99999999.99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit 0, 3 fractional small decimal" {
  match parse_item("00000000.111") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.111")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit, 3 fractional 0 decimal" {
  match parse_item("11111111.000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "11111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit, 3 fractional small decimal" {
  match parse_item("11111111.111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit, 3 fractional large decimal" {
  match parse_item("99999999.999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit 0, 1 fractional small decimal" {
  match parse_item("000000000.1") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit, 1 fractional 0 decimal" {
  match parse_item("111111111.0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "111111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit, 1 fractional small decimal" {
  match parse_item("111111111.1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 10 digit, 1 fractional large decimal" {
  match parse_item("999999999.9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit 0, 2 fractional small decimal" {
  match parse_item("000000000.11") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.11")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit, 2 fractional 0 decimal" {
  match parse_item("111111111.00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "111111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit, 2 fractional small decimal" {
  match parse_item("111111111.11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit, 2 fractional large decimal" {
  match parse_item("999999999.99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit 0, 3 fractional small decimal" {
  match parse_item("000000000.111") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.111")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit, 3 fractional 0 decimal" {
  match parse_item("111111111.000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "111111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit, 3 fractional small decimal" {
  match parse_item("111111111.111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit, 3 fractional large decimal" {
  match parse_item("999999999.999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit 0, 1 fractional small decimal" {
  match parse_item("0000000000.1") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit, 1 fractional 0 decimal" {
  match parse_item("1111111111.0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1111111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit, 1 fractional small decimal" {
  match parse_item("1111111111.1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 11 digit, 1 fractional large decimal" {
  match parse_item("9999999999.9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit 0, 2 fractional small decimal" {
  match parse_item("0000000000.11") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.11")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit, 2 fractional 0 decimal" {
  match parse_item("1111111111.00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1111111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit, 2 fractional small decimal" {
  match parse_item("1111111111.11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit, 2 fractional large decimal" {
  match parse_item("9999999999.99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit 0, 3 fractional small decimal" {
  match parse_item("0000000000.111") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.111")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit, 3 fractional 0 decimal" {
  match parse_item("1111111111.000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1111111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit, 3 fractional small decimal" {
  match parse_item("1111111111.111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit, 3 fractional large decimal" {
  match parse_item("9999999999.999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit 0, 1 fractional small decimal" {
  match parse_item("00000000000.1") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit, 1 fractional 0 decimal" {
  match parse_item("11111111111.0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "11111111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit, 1 fractional small decimal" {
  match parse_item("11111111111.1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 12 digit, 1 fractional large decimal" {
  match parse_item("99999999999.9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit 0, 2 fractional small decimal" {
  match parse_item("00000000000.11") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.11")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit, 2 fractional 0 decimal" {
  match parse_item("11111111111.00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "11111111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit, 2 fractional small decimal" {
  match parse_item("11111111111.11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit, 2 fractional large decimal" {
  match parse_item("99999999999.99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 14 digit 0, 3 fractional small decimal" {
  match parse_item("00000000000.111") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.111")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 14 digit, 3 fractional 0 decimal" {
  match parse_item("11111111111.000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "11111111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 14 digit, 3 fractional small decimal" {
  match parse_item("11111111111.111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 14 digit, 3 fractional large decimal" {
  match parse_item("99999999999.999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit 0, 1 fractional small decimal" {
  match parse_item("000000000000.1") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.1")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit, 1 fractional 0 decimal" {
  match parse_item("111111111111.0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "111111111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit, 1 fractional small decimal" {
  match parse_item("111111111111.1") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 13 digit, 1 fractional large decimal" {
  match parse_item("999999999999.9") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 14 digit 0, 2 fractional small decimal" {
  match parse_item("000000000000.11") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.11")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 14 digit, 2 fractional 0 decimal" {
  match parse_item("111111111111.00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "111111111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 14 digit, 2 fractional small decimal" {
  match parse_item("111111111111.11") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 14 digit, 2 fractional large decimal" {
  match parse_item("999999999999.99") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 15 digit 0, 3 fractional small decimal" {
  match parse_item("000000000000.111") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0.111")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 15 digit, 3 fractional 0 decimal" {
  match parse_item("111111111111.000") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "111111111111.0")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 15 digit, 3 fractional small decimal" {
  match parse_item("111111111111.111") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - 15 digit, 3 fractional large decimal" {
  match parse_item("999999999999.999") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number-generated - too many digit 0 decimal" {
  expect_parse_item_error("000000000000000.0")
}

///|
test "httpwg: number-generated - too many fractional digits 0 decimal" {
  expect_parse_item_error("000000000000.0000")
}

///|
test "httpwg: number-generated - too many digit 9 decimal" {
  expect_parse_item_error("999999999999999.9")
}

///|
test "httpwg: number-generated - too many fractional digits 9 decimal" {
  expect_parse_item_error("999999999999.9999")
}

///|
test "httpwg: number - basic integer" {
  match parse_item("42") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - zero integer" {
  match parse_item("0") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - negative zero" {
  match parse_item("-0") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
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
  match parse_item("-42") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - leading 0 integer" {
  match parse_item("042") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "42")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - leading 0 negative integer" {
  match parse_item("-042") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "-42")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - leading 0 zero" {
  match parse_item("00") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "0")
        Err(_) => fail("expected canonical serialization")
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
  match parse_item("123456789012345") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - long integer followed by comma" {
  match parse_list("123456789012345, 1") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: number - long negative integer" {
  match parse_item("-123456789012345") {
    Ok(_) => ()
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
  match parse_item("1.23") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - negative decimal" {
  match parse_item("-1.23") {
    Ok(_) => ()
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
  match parse_list("123456789012.123, 1.1") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: number - tricky precision decimal" {
  match parse_item("123456789012.1") {
    Ok(_) => ()
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
  match parse_item("1.123") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - negative decimal with three fractional digits" {
  match parse_item("-1.123") {
    Ok(_) => ()
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
  match parse_item("1.20") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1.2")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - decimal with 1 significant digit and 2 insignificant digits" {
  match parse_item("1.200") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1.2")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: number - decimal with 2 significant digits and 1 insignificant digit" {
  match parse_item("1.230") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "1.23")
        Err(_) => fail("expected canonical serialization")
      }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: param-dict - basic parameterised dict" {
  match parse_dictionary("abc=123;a=1;b=2, def=456, ghi=789;q=9;r=\"+w\"") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - single item parameterised dict" {
  match parse_dictionary("a=b; q=1.0") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=b;q=1.0")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - list item parameterised dictionary" {
  match parse_dictionary("a=(1 2); q=1.0") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=(1 2);q=1.0")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - missing parameter value parameterised dict" {
  match parse_dictionary("a=3;c;d=5") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - terminal missing parameter value parameterised dict" {
  match parse_dictionary("a=3;c=5;d") {
    Ok(_) => ()
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - no whitespace parameterised dict" {
  match parse_dictionary("a=b;c=1,d=e;f=2") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=b;c=1, d=e;f=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - whitespace before = parameterised dict" {
  expect_parse_dict_error("a=b;q =0.5")
}

///|
test "httpwg: param-dict - whitespace after = parameterised dict" {
  expect_parse_dict_error("a=b;q= 0.5")
}

///|
test "httpwg: param-dict - whitespace before ; parameterised dict" {
  expect_parse_dict_error("a=b ;q=0.5")
}

///|
test "httpwg: param-dict - whitespace after ; parameterised dict" {
  match parse_dictionary("a=b; q=0.5") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=b;q=0.5")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - extra whitespace parameterised dict" {
  match parse_dictionary("a=b;  c=1  ,  d=e; f=2; g=3") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=b;c=1, d=e;f=2;g=3")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - two lines parameterised list" {
  match parse_dictionary("a=b;c=1, d=e;f=2") {
    Ok(d) =>
      match serialize_dictionary(d) {
        Ok(s) => assert_eq(s, "a=b;c=1, d=e;f=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - trailing comma parameterised list" {
  expect_parse_dict_error("a=b; q=1.0,")
}

///|
test "httpwg: param-dict - empty item parameterised list" {
  expect_parse_dict_error("a=b; q=1.0,,c=d")
}

///|
test "httpwg: param-list - basic parameterised list" {
  match parse_list("abc_123;a=1;b=2; cdef_456, ghi;q=9;r=\"+w\"") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "abc_123;a=1;b=2;cdef_456, ghi;q=9;r=\"+w\"")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - single item parameterised list" {
  match parse_list("text/html;q=1.0") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - missing parameter value parameterised list" {
  match parse_list("text/html;a;q=1.0") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - missing terminal parameter value parameterised list" {
  match parse_list("text/html;q=1.0;a") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - no whitespace parameterised list" {
  match parse_list("text/html,text/plain;q=0.5") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "text/html, text/plain;q=0.5")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - whitespace before = parameterised list" {
  expect_parse_list_error("text/html, text/plain;q =0.5")
}

///|
test "httpwg: param-list - whitespace after = parameterised list" {
  expect_parse_list_error("text/html, text/plain;q= 0.5")
}

///|
test "httpwg: param-list - whitespace before ; parameterised list" {
  expect_parse_list_error("text/html, text/plain ;q=0.5")
}

///|
test "httpwg: param-list - whitespace after ; parameterised list" {
  match parse_list("text/html, text/plain; q=0.5") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "text/html, text/plain;q=0.5")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - extra whitespace parameterised list" {
  match parse_list("text/html  ,  text/plain;  q=0.5;  charset=utf-8") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "text/html, text/plain;q=0.5;charset=utf-8")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - two lines parameterised list" {
  match parse_list("text/html, text/plain;q=0.5") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "text/html, text/plain;q=0.5")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - trailing comma parameterised list" {
  expect_parse_list_error("text/html,text/plain;q=0.5,")
}

///|
test "httpwg: param-list - empty item parameterised list" {
  expect_parse_list_error("text/html,,text/plain;q=0.5,")
}

///|
test "httpwg: param-list - duplicate parameter with different positions" {
  match parse_list("a;b=1;c=2;b=3") {
    Ok(l) =>
      match serialize_list(l) {
        Ok(s) => assert_eq(s, "a;b=3;c=2")
        Err(_) => fail("expected canonical list serialization")
      }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - parameter ordering" {
  match parse_list("a;m;z;t") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - trailing semicolon in parameters" {
  expect_parse_list_error("a;b=1;")
}

///|
test "httpwg: param-list - trailing semicolon and space in parameters" {
  expect_parse_list_error("a;b=1; ")
}

///|
test "httpwg: param-list - empty parameter key" {
  expect_parse_list_error("a;=1")
}

///|
test "httpwg: param-list - parameter prefix only" {
  expect_parse_list_error("a;")
}

///|
test "httpwg: param-list - parameter prefix and space only" {
  expect_parse_list_error("a; ")
}

///|
test "httpwg: param-listlist - parameterised inner list" {
  match parse_list("(abc_123);a=1;b=2, cdef_456") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-listlist - parameterised inner list item" {
  match parse_list("(abc_123;a=1;b=2;cdef_456)") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-listlist - parameterised inner list with parameterised item" {
  match parse_list("(abc_123;a=1;b=2);cdef_456") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

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
  match parse_item("\"   \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x21 in string" {
  match parse_item("\" ! \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x22 in string" {
  expect_parse_item_error("\" \" \"")
}

///|
test "httpwg: string-generated - 0x23 in string" {
  match parse_item("\" # \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x24 in string" {
  match parse_item("\" $ \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x25 in string" {
  match parse_item("\" % \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x26 in string" {
  match parse_item("\" & \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x27 in string" {
  match parse_item("\" ' \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x28 in string" {
  match parse_item("\" ( \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x29 in string" {
  match parse_item("\" ) \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x2a in string" {
  match parse_item("\" * \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x2b in string" {
  match parse_item("\" + \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x2c in string" {
  match parse_item("\" , \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x2d in string" {
  match parse_item("\" - \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x2e in string" {
  match parse_item("\" . \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x2f in string" {
  match parse_item("\" / \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x30 in string" {
  match parse_item("\" 0 \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x31 in string" {
  match parse_item("\" 1 \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x32 in string" {
  match parse_item("\" 2 \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x33 in string" {
  match parse_item("\" 3 \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x34 in string" {
  match parse_item("\" 4 \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x35 in string" {
  match parse_item("\" 5 \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x36 in string" {
  match parse_item("\" 6 \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x37 in string" {
  match parse_item("\" 7 \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x38 in string" {
  match parse_item("\" 8 \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x39 in string" {
  match parse_item("\" 9 \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x3a in string" {
  match parse_item("\" : \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x3b in string" {
  match parse_item("\" ; \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x3c in string" {
  match parse_item("\" < \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x3d in string" {
  match parse_item("\" = \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x3e in string" {
  match parse_item("\" > \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x3f in string" {
  match parse_item("\" ? \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x40 in string" {
  match parse_item("\" @ \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x41 in string" {
  match parse_item("\" A \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x42 in string" {
  match parse_item("\" B \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x43 in string" {
  match parse_item("\" C \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x44 in string" {
  match parse_item("\" D \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x45 in string" {
  match parse_item("\" E \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x46 in string" {
  match parse_item("\" F \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x47 in string" {
  match parse_item("\" G \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x48 in string" {
  match parse_item("\" H \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x49 in string" {
  match parse_item("\" I \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x4a in string" {
  match parse_item("\" J \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x4b in string" {
  match parse_item("\" K \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x4c in string" {
  match parse_item("\" L \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x4d in string" {
  match parse_item("\" M \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x4e in string" {
  match parse_item("\" N \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x4f in string" {
  match parse_item("\" O \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x50 in string" {
  match parse_item("\" P \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x51 in string" {
  match parse_item("\" Q \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x52 in string" {
  match parse_item("\" R \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x53 in string" {
  match parse_item("\" S \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x54 in string" {
  match parse_item("\" T \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x55 in string" {
  match parse_item("\" U \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x56 in string" {
  match parse_item("\" V \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x57 in string" {
  match parse_item("\" W \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x58 in string" {
  match parse_item("\" X \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x59 in string" {
  match parse_item("\" Y \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x5a in string" {
  match parse_item("\" Z \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x5b in string" {
  match parse_item("\" [ \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x5c in string" {
  expect_parse_item_error("\" \\ \"")
}

///|
test "httpwg: string-generated - 0x5d in string" {
  match parse_item("\" ] \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x5e in string" {
  match parse_item("\" ^ \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x5f in string" {
  match parse_item("\" _ \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x60 in string" {
  match parse_item("\" ` \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x61 in string" {
  match parse_item("\" a \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x62 in string" {
  match parse_item("\" b \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x63 in string" {
  match parse_item("\" c \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x64 in string" {
  match parse_item("\" d \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x65 in string" {
  match parse_item("\" e \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x66 in string" {
  match parse_item("\" f \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x67 in string" {
  match parse_item("\" g \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x68 in string" {
  match parse_item("\" h \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x69 in string" {
  match parse_item("\" i \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x6a in string" {
  match parse_item("\" j \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x6b in string" {
  match parse_item("\" k \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x6c in string" {
  match parse_item("\" l \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x6d in string" {
  match parse_item("\" m \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x6e in string" {
  match parse_item("\" n \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x6f in string" {
  match parse_item("\" o \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x70 in string" {
  match parse_item("\" p \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x71 in string" {
  match parse_item("\" q \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x72 in string" {
  match parse_item("\" r \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x73 in string" {
  match parse_item("\" s \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x74 in string" {
  match parse_item("\" t \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x75 in string" {
  match parse_item("\" u \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x76 in string" {
  match parse_item("\" v \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x77 in string" {
  match parse_item("\" w \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x78 in string" {
  match parse_item("\" x \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x79 in string" {
  match parse_item("\" y \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x7a in string" {
  match parse_item("\" z \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x7b in string" {
  match parse_item("\" { \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x7c in string" {
  match parse_item("\" | \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x7d in string" {
  match parse_item("\" } \"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string-generated - 0x7e in string" {
  match parse_item("\" ~ \"") {
    Ok(_) => ()
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
  match parse_item("\"\\\"\"") {
    Ok(_) => ()
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
  match parse_item("\"\\\\\"") {
    Ok(_) => ()
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

///|
test "httpwg: string - basic string" {
  match parse_item("\"foo bar\"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string - empty string" {
  match parse_item("\"\"") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string - long string" {
  match
    parse_item(
      "\"foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo foo \"",
    ) {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: string - whitespace string" {
  match parse_item("\"   \"") {
    Ok(_) => ()
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
  match parse_item("\"foo \\\"bar\\\" \\\\ baz\"") {
    Ok(_) => ()
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
  () // multiple lines for item must fail
}

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
  match parse_item("a!a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x22 in token" {
  expect_parse_item_error("a\"a")
}

///|
test "httpwg: token-generated - 0x23 in token" {
  match parse_item("a#a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x24 in token" {
  match parse_item("a$a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x25 in token" {
  match parse_item("a%a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x26 in token" {
  match parse_item("a&a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x27 in token" {
  match parse_item("a'a") {
    Ok(_) => ()
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
  match parse_item("a*a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x2b in token" {
  match parse_item("a+a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x2c in token" {
  expect_parse_item_error("a,a")
}

///|
test "httpwg: token-generated - 0x2d in token" {
  match parse_item("a-a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x2e in token" {
  match parse_item("a.a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x2f in token" {
  match parse_item("a/a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x30 in token" {
  match parse_item("a0a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x31 in token" {
  match parse_item("a1a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x32 in token" {
  match parse_item("a2a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x33 in token" {
  match parse_item("a3a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x34 in token" {
  match parse_item("a4a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x35 in token" {
  match parse_item("a5a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x36 in token" {
  match parse_item("a6a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x37 in token" {
  match parse_item("a7a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x38 in token" {
  match parse_item("a8a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x39 in token" {
  match parse_item("a9a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x3a in token" {
  match parse_item("a:a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x3b in token" {
  match parse_item("a;a") {
    Ok(_) => ()
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
  match parse_item("aAa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x42 in token" {
  match parse_item("aBa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x43 in token" {
  match parse_item("aCa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x44 in token" {
  match parse_item("aDa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x45 in token" {
  match parse_item("aEa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x46 in token" {
  match parse_item("aFa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x47 in token" {
  match parse_item("aGa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x48 in token" {
  match parse_item("aHa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x49 in token" {
  match parse_item("aIa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4a in token" {
  match parse_item("aJa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4b in token" {
  match parse_item("aKa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4c in token" {
  match parse_item("aLa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4d in token" {
  match parse_item("aMa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4e in token" {
  match parse_item("aNa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4f in token" {
  match parse_item("aOa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x50 in token" {
  match parse_item("aPa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x51 in token" {
  match parse_item("aQa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x52 in token" {
  match parse_item("aRa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x53 in token" {
  match parse_item("aSa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x54 in token" {
  match parse_item("aTa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x55 in token" {
  match parse_item("aUa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x56 in token" {
  match parse_item("aVa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x57 in token" {
  match parse_item("aWa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x58 in token" {
  match parse_item("aXa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x59 in token" {
  match parse_item("aYa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x5a in token" {
  match parse_item("aZa") {
    Ok(_) => ()
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
  match parse_item("a^a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x5f in token" {
  match parse_item("a_a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x60 in token" {
  match parse_item("a`a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x61 in token" {
  match parse_item("aaa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x62 in token" {
  match parse_item("aba") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x63 in token" {
  match parse_item("aca") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x64 in token" {
  match parse_item("ada") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x65 in token" {
  match parse_item("aea") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x66 in token" {
  match parse_item("afa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x67 in token" {
  match parse_item("aga") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x68 in token" {
  match parse_item("aha") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x69 in token" {
  match parse_item("aia") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6a in token" {
  match parse_item("aja") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6b in token" {
  match parse_item("aka") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6c in token" {
  match parse_item("ala") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6d in token" {
  match parse_item("ama") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6e in token" {
  match parse_item("ana") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6f in token" {
  match parse_item("aoa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x70 in token" {
  match parse_item("apa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x71 in token" {
  match parse_item("aqa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x72 in token" {
  match parse_item("ara") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x73 in token" {
  match parse_item("asa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x74 in token" {
  match parse_item("ata") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x75 in token" {
  match parse_item("aua") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x76 in token" {
  match parse_item("ava") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x77 in token" {
  match parse_item("awa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x78 in token" {
  match parse_item("axa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x79 in token" {
  match parse_item("aya") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x7a in token" {
  match parse_item("aza") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x7b in token" {
  expect_parse_item_error("a{a")
}

///|
test "httpwg: token-generated - 0x7c in token" {
  match parse_item("a|a") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x7d in token" {
  expect_parse_item_error("a}a")
}

///|
test "httpwg: token-generated - 0x7e in token" {
  match parse_item("a~a") {
    Ok(_) => ()
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
  match parse_item(" a") {
    Ok(item) =>
      match serialize_item(item) {
        Ok(s) => assert_eq(s, "a")
        Err(_) => fail("expected canonical serialization")
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
  match parse_item("*a") {
    Ok(_) => ()
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
  match parse_item("Aa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x42 starting a token" {
  match parse_item("Ba") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x43 starting a token" {
  match parse_item("Ca") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x44 starting a token" {
  match parse_item("Da") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x45 starting a token" {
  match parse_item("Ea") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x46 starting a token" {
  match parse_item("Fa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x47 starting a token" {
  match parse_item("Ga") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x48 starting a token" {
  match parse_item("Ha") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x49 starting a token" {
  match parse_item("Ia") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4a starting a token" {
  match parse_item("Ja") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4b starting a token" {
  match parse_item("Ka") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4c starting a token" {
  match parse_item("La") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4d starting a token" {
  match parse_item("Ma") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4e starting a token" {
  match parse_item("Na") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x4f starting a token" {
  match parse_item("Oa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x50 starting a token" {
  match parse_item("Pa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x51 starting a token" {
  match parse_item("Qa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x52 starting a token" {
  match parse_item("Ra") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x53 starting a token" {
  match parse_item("Sa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x54 starting a token" {
  match parse_item("Ta") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x55 starting a token" {
  match parse_item("Ua") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x56 starting a token" {
  match parse_item("Va") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x57 starting a token" {
  match parse_item("Wa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x58 starting a token" {
  match parse_item("Xa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x59 starting a token" {
  match parse_item("Ya") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x5a starting a token" {
  match parse_item("Za") {
    Ok(_) => ()
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
  match parse_item("aa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x62 starting a token" {
  match parse_item("ba") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x63 starting a token" {
  match parse_item("ca") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x64 starting a token" {
  match parse_item("da") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x65 starting a token" {
  match parse_item("ea") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x66 starting a token" {
  match parse_item("fa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x67 starting a token" {
  match parse_item("ga") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x68 starting a token" {
  match parse_item("ha") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x69 starting a token" {
  match parse_item("ia") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6a starting a token" {
  match parse_item("ja") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6b starting a token" {
  match parse_item("ka") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6c starting a token" {
  match parse_item("la") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6d starting a token" {
  match parse_item("ma") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6e starting a token" {
  match parse_item("na") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x6f starting a token" {
  match parse_item("oa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x70 starting a token" {
  match parse_item("pa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x71 starting a token" {
  match parse_item("qa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x72 starting a token" {
  match parse_item("ra") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x73 starting a token" {
  match parse_item("sa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x74 starting a token" {
  match parse_item("ta") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x75 starting a token" {
  match parse_item("ua") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x76 starting a token" {
  match parse_item("va") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x77 starting a token" {
  match parse_item("wa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x78 starting a token" {
  match parse_item("xa") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x79 starting a token" {
  match parse_item("ya") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token-generated - 0x7a starting a token" {
  match parse_item("za") {
    Ok(_) => ()
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

///|
test "httpwg: token - basic token - item" {
  match parse_item("a_b-c.d3:f%00/*") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token - token with capitals - item" {
  match parse_item("fooBar") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token - token starting with capitals - item" {
  match parse_item("FooBar") {
    Ok(_) => ()
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: token - basic token - list" {
  match parse_list("a_b-c3/*") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: token - token with capitals - list" {
  match parse_list("fooBar") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: token - token starting with capitals - list" {
  match parse_list("FooBar") {
    Ok(_) => ()
    Err(_) => fail("expected list to parse")
  }
}
