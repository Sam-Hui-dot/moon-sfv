///|
fn item(value : BareItem, parameters : Array[Parameter]) -> Item {
  { value, parameters }
}

///|
fn bare_item(value : BareItem) -> Item {
  { value, parameters: [] }
}

///|
fn param(key : String, value : BareItem) -> Parameter {
  { key, value }
}

///|
fn member_item(item : Item) -> ListMember {
  ListMember::Item(item)
}

///|
fn member_inner(
  items : Array[Item],
  parameters : Array[Parameter],
) -> ListMember {
  ListMember::InnerList({ items, parameters })
}

///|
fn dict_entry(key : String, value : ListMember) -> DictionaryMember {
  { key, value }
}

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
fn expect_decimal(input : String, expected : Double) -> Unit raise {
  match parse_item(input) {
    Ok(item) =>
      match item.value {
        SfDecimal(value) => {
          let diff = if value > expected {
            value - expected
          } else {
            expected - value
          }
          if diff > 0.0001 {
            fail("decimal mismatch")
          }
        }
        _ => fail("expected Decimal item")
      }
    Err(_) => fail("expected Decimal item to parse")
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
fn expect_date(input : String, expected : Int64) -> Unit raise {
  match parse_item(input) {
    Ok(item) =>
      match item.value {
        SfDate(value) => assert_eq(value, expected)
        _ => fail("expected Date item")
      }
    Err(_) => fail("expected Date item to parse")
  }
}

///|
fn expect_display_string(input : String, expected : String) -> Unit raise {
  match parse_item(input) {
    Ok(item) =>
      match item.value {
        SfDisplayString(value) => assert_eq(value, expected)
        _ => fail("expected DisplayString item")
      }
    Err(_) => fail("expected DisplayString item to parse")
  }
}

///|
fn expect_parse_item_error(input : String) -> Unit raise {
  match parse_item(input) {
    Ok(_) => fail("expected malformed input to be rejected")
    Err(_) => ()
  }
}

///|
fn expect_parse_list_error(input : String) -> Unit raise {
  match parse_list(input) {
    Ok(_) => fail("expected malformed list to be rejected")
    Err(_) => ()
  }
}

///|
fn expect_parse_dict_error(input : String) -> Unit raise {
  match parse_dictionary(input) {
    Ok(_) => fail("expected malformed dictionary to be rejected")
    Err(_) => ()
  }
}

///|
fn expect_serialized_item(item : Item, expected : String) -> Unit raise {
  match serialize_item(item) {
    Ok(value) => assert_eq(value, expected)
    Err(_) => fail("expected Item to serialize")
  }
}

///|
fn expect_serialized_list(
  list : Array[ListMember],
  expected : String,
) -> Unit raise {
  match serialize_list(list) {
    Ok(value) => assert_eq(value, expected)
    Err(_) => fail("expected List to serialize")
  }
}

///|
fn expect_serialized_dict(
  dict : Array[DictionaryMember],
  expected : String,
) -> Unit raise {
  match serialize_dictionary(dict) {
    Ok(value) => assert_eq(value, expected)
    Err(_) => fail("expected Dictionary to serialize")
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
  expect_parse_item_error("?2")
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
  expect_parse_item_error("1000000000000000")
}

///|
test "parse Decimal item" {
  expect_decimal("1.5", 1.5)
  expect_decimal("-0.01", -0.01)
  expect_decimal("123456789012.123", 123456789012.123)
}

///|
test "reject malformed Decimal item" {
  expect_parse_item_error("1.")
  expect_parse_item_error(".5")
  expect_parse_item_error("1.2345")
  expect_parse_item_error("1234567890123.1")
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
  expect_parse_item_error("\"bad\\n\"")
}

///|
test "reject unterminated String" {
  expect_parse_item_error("\"unfinished")
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
test "parse Byte Sequence item" {
  match parse_item(":aGVsbG8=:") {
    Ok(item) =>
      match item.value {
        SfByteSequence(bytes) => {
          assert_eq(bytes.length(), 5)
          assert_eq(bytes[0].to_int(), 104) // 'h'
        }
        _ => fail("expected ByteSequence item")
      }
    Err(_) => fail("expected ByteSequence item to parse")
  }
}

///|
test "parse empty Byte Sequence item" {
  match parse_item("::") {
    Ok(item) =>
      match item.value {
        SfByteSequence(bytes) => assert_eq(bytes.length(), 0)
        _ => fail("expected empty ByteSequence item")
      }
    Err(_) => fail("expected empty ByteSequence item to parse")
  }
}

///|
test "reject invalid Byte Sequence item" {
  expect_parse_item_error(":invalid*:")
  expect_parse_item_error(":aGVsb==:")
  expect_parse_item_error(":aGVsbG8")
}

///|
test "parse Date item" {
  expect_date("@1659578233", 1659578233L)
  expect_date("@-100", -100L)
}

///|
test "reject malformed Date item" {
  expect_parse_item_error("@")
  expect_parse_item_error("@1659578233.5")
  expect_parse_item_error("@1000000000000000")
}

///|
test "parse Display String item" {
  expect_display_string("%\"hello%20world\"", "hello world")
  expect_display_string("%\"%c3%a9lat\"", "élat")
}

///|
test "reject malformed Display String item" {
  expect_parse_item_error("%\"hello")
  expect_parse_item_error("%\"hello%2\"")
  expect_parse_item_error("%\"hello%ZZ\"")
  expect_parse_item_error("%\"%C3%A9lat\"") // uppercase hex must fail in parse
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
  match parse_item("token;a=1;b=\"two\";c=?0;d=:aGVsbG8=:") {
    Ok(item) => {
      assert_eq(item.parameters.length(), 4)
      assert_eq(item.parameters[0].key, "a")
      assert_eq(item.parameters[1].key, "b")
      assert_eq(item.parameters[2].key, "c")
      assert_eq(item.parameters[3].key, "d")
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
  expect_parse_item_error("42 extra")
}

///|
test "parse empty List" {
  match parse_list("   ") {
    Ok(list) => assert_eq(list.length(), 0)
    Err(_) => fail("expected empty list to parse")
  }
}

///|
test "parse List of items and Inner Lists" {
  match parse_list("1, \"two\", (3 4);param=1") {
    Ok(list) => {
      assert_eq(list.length(), 3)
      match list[0] {
        ListMember::Item({ value: SfInteger(1L), .. }) => ()
        _ => fail("expected item 1")
      }
      match list[1] {
        ListMember::Item({ value: SfString("two"), .. }) => ()
        _ => fail("expected item two")
      }
      match list[2] {
        ListMember::InnerList({ items, parameters }) => {
          assert_eq(items.length(), 2)
          assert_eq(parameters.length(), 1)
          assert_eq(parameters[0].key, "param")
        }
        _ => fail("expected inner list")
      }
    }
    Err(_) => fail("expected list to parse")
  }
}

///|
test "reject trailing comma in List" {
  expect_parse_list_error("1, 2, ")
}

///|
test "parse empty Dictionary" {
  match parse_dictionary("   ") {
    Ok(dict) => assert_eq(dict.length(), 0)
    Err(_) => fail("expected empty dictionary to parse")
  }
}

///|
test "parse Dictionary with mixed entries" {
  match parse_dictionary("a=1, b, c;secure, d=(1 2)") {
    Ok(dict) => {
      assert_eq(dict.length(), 4)
      assert_eq(dict[0].key, "a")
      assert_eq(dict[1].key, "b")
      match dict[1].value {
        ListMember::Item({ value: SfBoolean(true), parameters }) =>
          assert_eq(parameters.length(), 0)
        _ => fail("expected boolean shorthand for b")
      }
      assert_eq(dict[2].key, "c")
      match dict[2].value {
        ListMember::Item({ value: SfBoolean(true), parameters }) => {
          assert_eq(parameters.length(), 1)
          assert_eq(parameters[0].key, "secure")
        }
        _ => fail("expected boolean shorthand with parameters for c")
      }
      assert_eq(dict[3].key, "d")
      match dict[3].value {
        ListMember::InnerList({ items, .. }) => assert_eq(items.length(), 2)
        _ => fail("expected inner list for d")
      }
    }
    Err(_) => fail("expected dictionary to parse")
  }
}

///|
test "duplicate Dictionary keys overwrite" {
  match parse_dictionary("a=1, a=2") {
    Ok(dict) => {
      assert_eq(dict.length(), 1)
      match dict[0].value {
        ListMember::Item({ value: SfInteger(2L), .. }) => ()
        _ => fail("expected overwrite of key a")
      }
    }
    Err(_) => fail("expected dictionary with duplicate keys to parse")
  }
}

///|
test "reject trailing comma in Dictionary" {
  expect_parse_dict_error("a=1, ")
}

///|
test "serialize Boolean Item" {
  expect_serialized_item(bare_item(SfBoolean(true)), "?1")
}

///|
test "serialize Integer Item" {
  expect_serialized_item(bare_item(SfInteger(-42L)), "-42")
}

///|
test "serialize Decimal Item" {
  expect_serialized_item(bare_item(SfDecimal(1.5)), "1.5")
  expect_serialized_item(bare_item(SfDecimal(1.0)), "1.0")
  expect_serialized_item(bare_item(SfDecimal(1.234)), "1.234")
  expect_serialized_item(bare_item(SfDecimal(-0.5)), "-0.5")
}

///|
test "serialize Date Item" {
  expect_serialized_item(bare_item(SfDate(1659578233L)), "@1659578233")
}

///|
test "serialize Byte Sequence Item" {
  let b = b"hello"
  expect_serialized_item(bare_item(SfByteSequence(b)), ":aGVsbG8=:")
}

///|
test "serialize Display String Item" {
  expect_serialized_item(
    bare_item(SfDisplayString("hello world")),
    "%\"hello world\"",
  )
  expect_serialized_item(
    bare_item(SfDisplayString("say % \"hi\"")),
    "%\"say %25 %22hi%22\"",
  )
}

///|
test "serialize escaped String Item" {
  expect_serialized_item(
    bare_item(SfString("say \"hi\"")),
    "\"say \\\"hi\\\"\"",
  )
}

///|
test "serialize Token with parameters" {
  expect_serialized_item(
    item(SfToken("example"), [
      param("secure", SfBoolean(true)),
      param("level", SfInteger(2L)),
    ]),
    "example;secure;level=2",
  )
}

///|
test "serialize List" {
  let item1 : Item = bare_item(SfInteger(1L))
  let item2 : Item = bare_item(SfString("two"))
  let inner1 : Item = bare_item(SfInteger(3L))
  let inner2 : Item = bare_item(SfInteger(4L))
  let list : Array[ListMember] = [
    member_item(item1),
    member_item(item2),
    member_inner([inner1, inner2], [param("param", SfInteger(1L))]),
  ]
  expect_serialized_list(list, "1, \"two\", (3 4);param=1")
}

///|
test "serialize Dictionary" {
  let item_a : Item = bare_item(SfInteger(1L))
  let item_b : Item = bare_item(SfBoolean(true))
  let item_c : Item = item(SfBoolean(true), [param("secure", SfBoolean(true))])
  let dict : Array[DictionaryMember] = [
    dict_entry("a", member_item(item_a)),
    dict_entry("b", member_item(item_b)),
    dict_entry("c", member_item(item_c)),
  ]
  expect_serialized_dict(dict, "a=1, b, c;secure")
}

///|
test "reject invalid Token during serialization" {
  match serialize_item(bare_item(SfToken("not valid"))) {
    Ok(_) => fail("expected invalid Token to be rejected")
    Err(_) => ()
  }
}
