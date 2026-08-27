///| Conformance test vectors generated from httpwg/structured-field-tests

///| BSD 3-Clause License - IETF Trust

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
  let expected : Item = { value: SfInteger(1L), parameters: [] }
  match parse_item("  1  ") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "1")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: item - leading and trailing whitespace" {
  let expected : Item = { value: SfInteger(1L), parameters: [] }
  match parse_item("     1  ") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "1")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: list - basic list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    ListMember::Item({ value: SfInteger(42L), parameters: [] }),
  ]
  match parse_list("1, 42") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "1, 42")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - empty list" {
  let expected : Array[ListMember] = []
  match parse_list("") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - leading SP list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfInteger(42L), parameters: [] }),
    ListMember::Item({ value: SfInteger(43L), parameters: [] }),
  ]
  match parse_list("  42, 43") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "42, 43")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - single item list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfInteger(42L), parameters: [] }),
  ]
  match parse_list("42") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "42")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - no whitespace list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    ListMember::Item({ value: SfInteger(42L), parameters: [] }),
  ]
  match parse_list("1,42") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "1, 42")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - extra whitespace list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    ListMember::Item({ value: SfInteger(42L), parameters: [] }),
  ]
  match parse_list("1 , 42") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "1, 42")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - tab separated list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    ListMember::Item({ value: SfInteger(42L), parameters: [] }),
  ]
  match parse_list("1\t,\t42") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "1, 42")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: list - two line list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    ListMember::Item({ value: SfInteger(42L), parameters: [] }),
  ]
  match parse_list("1, 42") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "1, 42")
        Err(_) => fail("expected canonical list serialization")
      }
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
  let expected : Array[ListMember] = [
    ListMember::InnerList({
      items: [
        { value: SfInteger(1L), parameters: [] },
        { value: SfInteger(2L), parameters: [] },
      ],
      parameters: [],
    }),
    ListMember::InnerList({
      items: [
        { value: SfInteger(42L), parameters: [] },
        { value: SfInteger(43L), parameters: [] },
      ],
      parameters: [],
    }),
  ]
  match parse_list("(1 2), (42 43)") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "(1 2), (42 43)")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: listlist - single item list of lists" {
  let expected : Array[ListMember] = [
    ListMember::InnerList({
      items: [{ value: SfInteger(42L), parameters: [] }],
      parameters: [],
    }),
  ]
  match parse_list("(42)") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "(42)")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: listlist - empty item list of lists" {
  let expected : Array[ListMember] = [
    ListMember::InnerList({ items: [], parameters: [] }),
  ]
  match parse_list("()") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "()")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: listlist - empty middle item list of lists" {
  let expected : Array[ListMember] = [
    ListMember::InnerList({
      items: [{ value: SfInteger(1L), parameters: [] }],
      parameters: [],
    }),
    ListMember::InnerList({ items: [], parameters: [] }),
    ListMember::InnerList({
      items: [{ value: SfInteger(42L), parameters: [] }],
      parameters: [],
    }),
  ]
  match parse_list("(1),(),(42)") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "(1), (), (42)")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: listlist - extra whitespace list of lists" {
  let expected : Array[ListMember] = [
    ListMember::InnerList({
      items: [
        { value: SfInteger(1L), parameters: [] },
        { value: SfInteger(42L), parameters: [] },
      ],
      parameters: [],
    }),
  ]
  match parse_list("(  1  42  )") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "(1 42)")
        Err(_) => fail("expected canonical list serialization")
      }
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
test "httpwg: dictionary - basic dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "en",
      value: ListMember::Item({ value: SfString("Applepie"), parameters: [] }),
    },
    {
      key: "da",
      value: ListMember::Item({
        value: SfByteSequence(base64_decode("w4ZibGV0w6ZydGUK").unwrap()),
        parameters: [],
      }),
    },
  ]
  match parse_dictionary("en=\"Applepie\", da=:w4ZibGV0w6ZydGUK:") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "en=\"Applepie\", da=:w4ZibGV0w6ZydGUK:")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - empty dictionary" {
  let expected : Array[DictionaryMember] = []
  match parse_dictionary("") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - single item dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
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
test "httpwg: dictionary - list item dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::InnerList({
        items: [
          { value: SfInteger(1L), parameters: [] },
          { value: SfInteger(2L), parameters: [] },
        ],
        parameters: [],
      }),
    },
  ]
  match parse_dictionary("a=(1 2)") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=(1 2)")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - single list item dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::InnerList({
        items: [{ value: SfInteger(1L), parameters: [] }],
        parameters: [],
      }),
    },
  ]
  match parse_dictionary("a=(1)") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=(1)")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - empty list item dictionary" {
  let expected : Array[DictionaryMember] = [
    { key: "a", value: ListMember::InnerList({ items: [], parameters: [] }) },
  ]
  match parse_dictionary("a=()") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=()")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - no whitespace dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({ value: SfInteger(2L), parameters: [] }),
    },
  ]
  match parse_dictionary("a=1,b=2") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=1, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - extra whitespace dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({ value: SfInteger(2L), parameters: [] }),
    },
  ]
  match parse_dictionary("a=1 ,  b=2") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=1, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - tab separated dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({ value: SfInteger(2L), parameters: [] }),
    },
  ]
  match parse_dictionary("a=1\t,\tb=2") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=1, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - leading whitespace dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({ value: SfInteger(2L), parameters: [] }),
    },
  ]
  match parse_dictionary("     a=1 ,  b=2") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=1, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
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
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({ value: SfInteger(2L), parameters: [] }),
    },
  ]
  match parse_dictionary("a=1, b=2") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=1, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - missing value dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({ value: SfBoolean(true), parameters: [] }),
    },
    {
      key: "c",
      value: ListMember::Item({ value: SfInteger(3L), parameters: [] }),
    },
  ]
  match parse_dictionary("a=1, b, c=3") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=1, b, c=3")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - all missing value dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfBoolean(true), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({ value: SfBoolean(true), parameters: [] }),
    },
    {
      key: "c",
      value: ListMember::Item({ value: SfBoolean(true), parameters: [] }),
    },
  ]
  match parse_dictionary("a, b, c") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a, b, c")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - start missing value dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfBoolean(true), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({ value: SfInteger(2L), parameters: [] }),
    },
  ]
  match parse_dictionary("a, b=2") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - end missing value dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({ value: SfBoolean(true), parameters: [] }),
    },
  ]
  match parse_dictionary("a=1, b") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=1, b")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - missing value with params dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({
        value: SfBoolean(true),
        parameters: [{ key: "foo", value: SfInteger(9L) }],
      }),
    },
    {
      key: "c",
      value: ListMember::Item({ value: SfInteger(3L), parameters: [] }),
    },
  ]
  match parse_dictionary("a=1, b;foo=9, c=3") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=1, b;foo=9, c=3")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - explicit true value with params dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({
        value: SfBoolean(true),
        parameters: [{ key: "foo", value: SfInteger(9L) }],
      }),
    },
    {
      key: "c",
      value: ListMember::Item({ value: SfInteger(3L), parameters: [] }),
    },
  ]
  match parse_dictionary("a=1, b=?1;foo=9, c=3") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=1, b;foo=9, c=3")
        Err(_) => fail("expected canonical dictionary serialization")
      }
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
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfInteger(3L), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({ value: SfInteger(2L), parameters: [] }),
    },
  ]
  match parse_dictionary("a=1,b=2,a=3") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=3, b=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: dictionary - dictionary key ordering" {
  let expected : Array[DictionaryMember] = [
    {
      key: "m",
      value: ListMember::Item({ value: SfBoolean(true), parameters: [] }),
    },
    {
      key: "z",
      value: ListMember::Item({ value: SfBoolean(true), parameters: [] }),
    },
    {
      key: "t",
      value: ListMember::Item({ value: SfBoolean(true), parameters: [] }),
    },
  ]
  match parse_dictionary("m, z, t") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "m, z, t")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
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
test "httpwg: param-dict - basic parameterised dict" {
  let expected : Array[DictionaryMember] = [
    {
      key: "abc",
      value: ListMember::Item({
        value: SfInteger(123L),
        parameters: [
          { key: "a", value: SfInteger(1L) },
          { key: "b", value: SfInteger(2L) },
        ],
      }),
    },
    {
      key: "def",
      value: ListMember::Item({ value: SfInteger(456L), parameters: [] }),
    },
    {
      key: "ghi",
      value: ListMember::Item({
        value: SfInteger(789L),
        parameters: [
          { key: "q", value: SfInteger(9L) },
          { key: "r", value: SfString("+w") },
        ],
      }),
    },
  ]
  match parse_dictionary("abc=123;a=1;b=2, def=456, ghi=789;q=9;r=\"+w\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "abc=123;a=1;b=2, def=456, ghi=789;q=9;r=\"+w\"")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - single item parameterised dict" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({
        value: SfToken("b"),
        parameters: [{ key: "q", value: SfDecimal(1.0) }],
      }),
    },
  ]
  match parse_dictionary("a=b; q=1.0") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=b;q=1.0")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - list item parameterised dictionary" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::InnerList({
        items: [
          { value: SfInteger(1L), parameters: [] },
          { value: SfInteger(2L), parameters: [] },
        ],
        parameters: [{ key: "q", value: SfDecimal(1.0) }],
      }),
    },
  ]
  match parse_dictionary("a=(1 2); q=1.0") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=(1 2);q=1.0")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - missing parameter value parameterised dict" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({
        value: SfInteger(3L),
        parameters: [
          { key: "c", value: SfBoolean(true) },
          { key: "d", value: SfInteger(5L) },
        ],
      }),
    },
  ]
  match parse_dictionary("a=3;c;d=5") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=3;c;d=5")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - terminal missing parameter value parameterised dict" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({
        value: SfInteger(3L),
        parameters: [
          { key: "c", value: SfInteger(5L) },
          { key: "d", value: SfBoolean(true) },
        ],
      }),
    },
  ]
  match parse_dictionary("a=3;c=5;d") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=3;c=5;d")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - no whitespace parameterised dict" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({
        value: SfToken("b"),
        parameters: [{ key: "c", value: SfInteger(1L) }],
      }),
    },
    {
      key: "d",
      value: ListMember::Item({
        value: SfToken("e"),
        parameters: [{ key: "f", value: SfInteger(2L) }],
      }),
    },
  ]
  match parse_dictionary("a=b;c=1,d=e;f=2") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=b;c=1, d=e;f=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
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
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({
        value: SfToken("b"),
        parameters: [{ key: "q", value: SfDecimal(0.5) }],
      }),
    },
  ]
  match parse_dictionary("a=b; q=0.5") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=b;q=0.5")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - extra whitespace parameterised dict" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({
        value: SfToken("b"),
        parameters: [{ key: "c", value: SfInteger(1L) }],
      }),
    },
    {
      key: "d",
      value: ListMember::Item({
        value: SfToken("e"),
        parameters: [
          { key: "f", value: SfInteger(2L) },
          { key: "g", value: SfInteger(3L) },
        ],
      }),
    },
  ]
  match parse_dictionary("a=b;  c=1  ,  d=e; f=2; g=3") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=b;c=1, d=e;f=2;g=3")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: param-dict - two lines parameterised list" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({
        value: SfToken("b"),
        parameters: [{ key: "c", value: SfInteger(1L) }],
      }),
    },
    {
      key: "d",
      value: ListMember::Item({
        value: SfToken("e"),
        parameters: [{ key: "f", value: SfInteger(2L) }],
      }),
    },
  ]
  match parse_dictionary("a=b;c=1, d=e;f=2") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=b;c=1, d=e;f=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
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
  let expected : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("abc_123"),
      parameters: [
        { key: "a", value: SfInteger(1L) },
        { key: "b", value: SfInteger(2L) },
        { key: "cdef_456", value: SfBoolean(true) },
      ],
    }),
    ListMember::Item({
      value: SfToken("ghi"),
      parameters: [
        { key: "q", value: SfInteger(9L) },
        { key: "r", value: SfString("+w") },
      ],
    }),
  ]
  match parse_list("abc_123;a=1;b=2; cdef_456, ghi;q=9;r=\"+w\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "abc_123;a=1;b=2;cdef_456, ghi;q=9;r=\"+w\"")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - single item parameterised list" {
  let expected : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("text/html"),
      parameters: [{ key: "q", value: SfDecimal(1.0) }],
    }),
  ]
  match parse_list("text/html;q=1.0") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "text/html;q=1.0")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - missing parameter value parameterised list" {
  let expected : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("text/html"),
      parameters: [
        { key: "a", value: SfBoolean(true) },
        { key: "q", value: SfDecimal(1.0) },
      ],
    }),
  ]
  match parse_list("text/html;a;q=1.0") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "text/html;a;q=1.0")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - missing terminal parameter value parameterised list" {
  let expected : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("text/html"),
      parameters: [
        { key: "q", value: SfDecimal(1.0) },
        { key: "a", value: SfBoolean(true) },
      ],
    }),
  ]
  match parse_list("text/html;q=1.0;a") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "text/html;q=1.0;a")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - no whitespace parameterised list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfToken("text/html"), parameters: [] }),
    ListMember::Item({
      value: SfToken("text/plain"),
      parameters: [{ key: "q", value: SfDecimal(0.5) }],
    }),
  ]
  match parse_list("text/html,text/plain;q=0.5") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "text/html, text/plain;q=0.5")
        Err(_) => fail("expected canonical list serialization")
      }
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
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfToken("text/html"), parameters: [] }),
    ListMember::Item({
      value: SfToken("text/plain"),
      parameters: [{ key: "q", value: SfDecimal(0.5) }],
    }),
  ]
  match parse_list("text/html, text/plain; q=0.5") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "text/html, text/plain;q=0.5")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - extra whitespace parameterised list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfToken("text/html"), parameters: [] }),
    ListMember::Item({
      value: SfToken("text/plain"),
      parameters: [
        { key: "q", value: SfDecimal(0.5) },
        { key: "charset", value: SfToken("utf-8") },
      ],
    }),
  ]
  match parse_list("text/html  ,  text/plain;  q=0.5;  charset=utf-8") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "text/html, text/plain;q=0.5;charset=utf-8")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - two lines parameterised list" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfToken("text/html"), parameters: [] }),
    ListMember::Item({
      value: SfToken("text/plain"),
      parameters: [{ key: "q", value: SfDecimal(0.5) }],
    }),
  ]
  match parse_list("text/html, text/plain;q=0.5") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "text/html, text/plain;q=0.5")
        Err(_) => fail("expected canonical list serialization")
      }
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
  let expected : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("a"),
      parameters: [
        { key: "b", value: SfInteger(3L) },
        { key: "c", value: SfInteger(2L) },
      ],
    }),
  ]
  match parse_list("a;b=1;c=2;b=3") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "a;b=3;c=2")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-list - parameter ordering" {
  let expected : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("a"),
      parameters: [
        { key: "m", value: SfBoolean(true) },
        { key: "z", value: SfBoolean(true) },
        { key: "t", value: SfBoolean(true) },
      ],
    }),
  ]
  match parse_list("a;m;z;t") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "a;m;z;t")
        Err(_) => fail("expected canonical list serialization")
      }
    }
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
  let expected : Array[ListMember] = [
    ListMember::InnerList({
      items: [{ value: SfToken("abc_123"), parameters: [] }],
      parameters: [
        { key: "a", value: SfInteger(1L) },
        { key: "b", value: SfInteger(2L) },
      ],
    }),
    ListMember::Item({ value: SfToken("cdef_456"), parameters: [] }),
  ]
  match parse_list("(abc_123);a=1;b=2, cdef_456") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "(abc_123);a=1;b=2, cdef_456")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-listlist - parameterised inner list item" {
  let expected : Array[ListMember] = [
    ListMember::InnerList({
      items: [
        {
          value: SfToken("abc_123"),
          parameters: [
            { key: "a", value: SfInteger(1L) },
            { key: "b", value: SfInteger(2L) },
            { key: "cdef_456", value: SfBoolean(true) },
          ],
        },
      ],
      parameters: [],
    }),
  ]
  match parse_list("(abc_123;a=1;b=2;cdef_456)") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "(abc_123;a=1;b=2;cdef_456)")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: param-listlist - parameterised inner list with parameterised item" {
  let expected : Array[ListMember] = [
    ListMember::InnerList({
      items: [
        {
          value: SfToken("abc_123"),
          parameters: [
            { key: "a", value: SfInteger(1L) },
            { key: "b", value: SfInteger(2L) },
          ],
        },
      ],
      parameters: [{ key: "cdef_456", value: SfBoolean(true) }],
    }),
  ]
  match parse_list("(abc_123;a=1;b=2);cdef_456") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "(abc_123;a=1;b=2);cdef_456")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Foo-Example" {
  let expected : Item = {
    value: SfInteger(2L),
    parameters: [{ key: "foourl", value: SfString("https://foo.example.com/") }],
  }
  match parse_item("2; foourl=\"https://foo.example.com/\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "2;foourl=\"https://foo.example.com/\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-StrListHeader" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfString("foo"), parameters: [] }),
    ListMember::Item({ value: SfString("bar"), parameters: [] }),
    ListMember::Item({
      value: SfString("It was the best of times."),
      parameters: [],
    }),
  ]
  match parse_list("\"foo\", \"bar\", \"It was the best of times.\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "\"foo\", \"bar\", \"It was the best of times.\"")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Example-Hdr (list on one line)" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfToken("foo"), parameters: [] }),
    ListMember::Item({ value: SfToken("bar"), parameters: [] }),
  ]
  match parse_list("foo, bar") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo, bar")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Example-Hdr (list on two lines)" {
  let expected : Array[ListMember] = [
    ListMember::Item({ value: SfToken("foo"), parameters: [] }),
    ListMember::Item({ value: SfToken("bar"), parameters: [] }),
  ]
  match parse_list("foo, bar") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "foo, bar")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Example-StrListListHeader" {
  let expected : Array[ListMember] = [
    ListMember::InnerList({
      items: [
        { value: SfString("foo"), parameters: [] },
        { value: SfString("bar"), parameters: [] },
      ],
      parameters: [],
    }),
    ListMember::InnerList({
      items: [{ value: SfString("baz"), parameters: [] }],
      parameters: [],
    }),
    ListMember::InnerList({
      items: [
        { value: SfString("bat"), parameters: [] },
        { value: SfString("one"), parameters: [] },
      ],
      parameters: [],
    }),
    ListMember::InnerList({ items: [], parameters: [] }),
  ]
  match parse_list("(\"foo\" \"bar\"), (\"baz\"), (\"bat\" \"one\"), ()") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) =>
          assert_eq(s, "(\"foo\" \"bar\"), (\"baz\"), (\"bat\" \"one\"), ()")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Example-ListListParam" {
  let expected : Array[ListMember] = [
    ListMember::InnerList({
      items: [
        {
          value: SfString("foo"),
          parameters: [
            { key: "a", value: SfInteger(1L) },
            { key: "b", value: SfInteger(2L) },
          ],
        },
      ],
      parameters: [{ key: "lvl", value: SfInteger(5L) }],
    }),
    ListMember::InnerList({
      items: [
        { value: SfString("bar"), parameters: [] },
        { value: SfString("baz"), parameters: [] },
      ],
      parameters: [{ key: "lvl", value: SfInteger(1L) }],
    }),
  ]
  match parse_list("(\"foo\"; a=1;b=2);lvl=5, (\"bar\" \"baz\");lvl=1") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) =>
          assert_eq(s, "(\"foo\";a=1;b=2);lvl=5, (\"bar\" \"baz\");lvl=1")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Example-ParamListHeader" {
  let expected : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("abc"),
      parameters: [
        { key: "a", value: SfInteger(1L) },
        { key: "b", value: SfInteger(2L) },
        { key: "cde_456", value: SfBoolean(true) },
      ],
    }),
    ListMember::InnerList({
      items: [
        {
          value: SfToken("ghi"),
          parameters: [{ key: "jk", value: SfInteger(4L) }],
        },
        { value: SfToken("l"), parameters: [] },
      ],
      parameters: [
        { key: "q", value: SfString("9") },
        { key: "r", value: SfToken("w") },
      ],
    }),
  ]
  match parse_list("abc;a=1;b=2; cde_456, (ghi;jk=4 l);q=\"9\";r=w") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_list(parsed) {
        Ok(s) => assert_eq(s, "abc;a=1;b=2;cde_456, (ghi;jk=4 l);q=\"9\";r=w")
        Err(_) => fail("expected canonical list serialization")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "httpwg: examples - Example-IntHeader" {
  let expected : Item = {
    value: SfInteger(1L),
    parameters: [
      { key: "a", value: SfBoolean(true) },
      { key: "b", value: SfBoolean(false) },
    ],
  }
  match parse_item("1; a; b=?0") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "1;a;b=?0")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-DictHeader" {
  let expected : Array[DictionaryMember] = [
    {
      key: "en",
      value: ListMember::Item({ value: SfString("Applepie"), parameters: [] }),
    },
    {
      key: "da",
      value: ListMember::Item({
        value: SfByteSequence(base64_decode("w4ZibGV0w6ZydGU=").unwrap()),
        parameters: [],
      }),
    },
  ]
  match parse_dictionary("en=\"Applepie\", da=:w4ZibGV0w6ZydGU=:") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "en=\"Applepie\", da=:w4ZibGV0w6ZydGU=:")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: examples - Example-DictHeader (boolean values)" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::Item({ value: SfBoolean(false), parameters: [] }),
    },
    {
      key: "b",
      value: ListMember::Item({ value: SfBoolean(true), parameters: [] }),
    },
    {
      key: "c",
      value: ListMember::Item({
        value: SfBoolean(true),
        parameters: [{ key: "foo", value: SfToken("bar") }],
      }),
    },
  ]
  match parse_dictionary("a=?0, b, c; foo=bar") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=?0, b, c;foo=bar")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: examples - Example-DictListHeader" {
  let expected : Array[DictionaryMember] = [
    {
      key: "rating",
      value: ListMember::Item({ value: SfDecimal(1.5), parameters: [] }),
    },
    {
      key: "feelings",
      value: ListMember::InnerList({
        items: [
          { value: SfToken("joy"), parameters: [] },
          { value: SfToken("sadness"), parameters: [] },
        ],
        parameters: [],
      }),
    },
  ]
  match parse_dictionary("rating=1.5, feelings=(joy sadness)") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "rating=1.5, feelings=(joy sadness)")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: examples - Example-MixDict" {
  let expected : Array[DictionaryMember] = [
    {
      key: "a",
      value: ListMember::InnerList({
        items: [
          { value: SfInteger(1L), parameters: [] },
          { value: SfInteger(2L), parameters: [] },
        ],
        parameters: [],
      }),
    },
    {
      key: "b",
      value: ListMember::Item({ value: SfInteger(3L), parameters: [] }),
    },
    {
      key: "c",
      value: ListMember::Item({
        value: SfInteger(4L),
        parameters: [{ key: "aa", value: SfToken("bb") }],
      }),
    },
    {
      key: "d",
      value: ListMember::InnerList({
        items: [
          { value: SfInteger(5L), parameters: [] },
          { value: SfInteger(6L), parameters: [] },
        ],
        parameters: [{ key: "valid", value: SfBoolean(true) }],
      }),
    },
  ]
  match parse_dictionary("a=(1 2), b=3, c=4;aa=bb, d=(5 6);valid") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "a=(1 2), b=3, c=4;aa=bb, d=(5 6);valid")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: examples - Example-Hdr (dictionary on one line)" {
  let expected : Array[DictionaryMember] = [
    {
      key: "foo",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
    {
      key: "bar",
      value: ListMember::Item({ value: SfInteger(2L), parameters: [] }),
    },
  ]
  match parse_dictionary("foo=1, bar=2") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "foo=1, bar=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: examples - Example-Hdr (dictionary on two lines)" {
  let expected : Array[DictionaryMember] = [
    {
      key: "foo",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
    {
      key: "bar",
      value: ListMember::Item({ value: SfInteger(2L), parameters: [] }),
    },
  ]
  match parse_dictionary("foo=1, bar=2") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_dictionary(parsed) {
        Ok(s) => assert_eq(s, "foo=1, bar=2")
        Err(_) => fail("expected canonical dictionary serialization")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "httpwg: examples - Example-IntItemHeader" {
  let expected : Item = { value: SfInteger(5L), parameters: [] }
  match parse_item("5") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "5")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-IntItemHeader (params)" {
  let expected : Item = {
    value: SfInteger(5L),
    parameters: [{ key: "foo", value: SfToken("bar") }],
  }
  match parse_item("5; foo=bar") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "5;foo=bar")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-IntegerHeader" {
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
test "httpwg: examples - Example-FloatHeader" {
  let expected : Item = { value: SfDecimal(4.5), parameters: [] }
  match parse_item("4.5") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "4.5")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-StringHeader" {
  let expected : Item = { value: SfString("hello world"), parameters: [] }
  match parse_item("\"hello world\"") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, "\"hello world\"")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-BinaryHdr" {
  let expected : Item = {
    value: SfByteSequence(
      base64_decode("cHJldGVuZCB0aGlzIGlzIGJpbmFyeSBjb250ZW50Lg==").unwrap(),
    ),
    parameters: [],
  }
  match parse_item(":cHJldGVuZCB0aGlzIGlzIGJpbmFyeSBjb250ZW50Lg==:") {
    Ok(parsed) => {
      assert_eq(parsed, expected)
      match serialize_item(parsed) {
        Ok(s) => assert_eq(s, ":cHJldGVuZCB0aGlzIGlzIGJpbmFyeSBjb250ZW50Lg==:")
        Err(_) => fail("expected canonical serialization")
      }
    }
    Err(_) => fail("expected item to parse")
  }
}

///|
test "httpwg: examples - Example-BoolHdr" {
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
