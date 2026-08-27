///| Serialisation test vectors generated from httpwg/structured-field-tests/serialisation-tests

///| BSD 3-Clause License - IETF Trust

///|
test "httpwg-ser: key-generated - 0x00 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0000a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x01 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0001a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x02 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0002a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x03 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0003a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x04 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0004a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x05 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0005a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x06 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0006a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x07 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0007a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x08 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0008a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x09 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\ta", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0a in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\na", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u000ba", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u000ca", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0d in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\ra", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0e in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u000ea", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0f in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u000fa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x10 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0010a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x11 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0011a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x12 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0012a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x13 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0013a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x14 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0014a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x15 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0015a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x16 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0016a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x17 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0017a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x18 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0018a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x19 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u0019a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1a in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u001aa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u001ba", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u001ca", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1d in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u001da", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1e in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u001ea", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1f in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u001fa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x20 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x21 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a!a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x22 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\"a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x23 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a#a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x24 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a$a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x25 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a%a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x26 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a&a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x27 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a'a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x28 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a(a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x29 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a)a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a+a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a,a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2f in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a/a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3a in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a:a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a;a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a<a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3d in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a=a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3e in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a>a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3f in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a?a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x40 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a@a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x41 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aAa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x42 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aBa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x43 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aCa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x44 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aDa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x45 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aEa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x46 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aFa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x47 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aGa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x48 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aHa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x49 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aIa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4a in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aJa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aKa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aLa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4d in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aMa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4e in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aNa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4f in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aOa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x50 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aPa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x51 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aQa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x52 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aRa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x53 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aSa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x54 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aTa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x55 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aUa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x56 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aVa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x57 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aWa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x58 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aXa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x59 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aYa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5a in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("aZa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a[a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\\a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5d in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a]a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5e in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a^a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x60 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a`a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a{a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a|a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7d in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a}a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7e in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a~a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7f in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("a\u007fa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x00 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0000a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x01 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0001a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x02 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0002a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x03 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0003a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x04 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0004a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x05 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0005a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x06 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0006a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x07 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0007a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x08 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0008a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x09 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\ta", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0a starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\na", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u000ba", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u000ca", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\ra", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u000ea", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u000fa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x10 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0010a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x11 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0011a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x12 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0012a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x13 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0013a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x14 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0014a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x15 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0015a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x16 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0016a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x17 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0017a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x18 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0018a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x19 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u0019a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1a starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u001aa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u001ba", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u001ca", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u001da", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u001ea", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u001fa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x20 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry(" a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x21 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("!a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x22 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\"a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x23 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("#a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x24 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("$a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x25 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("%a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x26 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("&a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x27 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("'a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x28 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("(a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x29 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry(")a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("+a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry(",a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("-a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry(".a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("/a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x30 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("0a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x31 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("1a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x32 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("2a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x33 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("3a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x34 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("4a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x35 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("5a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x36 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("6a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x37 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("7a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x38 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("8a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x39 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("9a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3a starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry(":a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry(";a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("<a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("=a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry(">a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("?a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x40 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("@a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x41 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Aa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x42 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ba", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x43 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ca", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x44 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Da", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x45 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ea", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x46 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Fa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x47 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ga", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x48 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ha", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x49 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ia", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4a starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ja", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ka", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("La", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ma", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Na", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Oa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x50 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Pa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x51 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Qa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x52 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ra", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x53 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Sa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x54 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ta", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x55 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ua", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x56 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Va", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x57 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Wa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x58 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Xa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x59 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Ya", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5a starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("Za", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("[a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\\a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("]a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("^a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("_a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x60 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("`a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("{a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("|a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("}a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("~a", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    dict_entry("\u007fa", member_item(bare_item(SfInteger(1L)))),
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x00 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0000a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x01 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0001a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x02 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0002a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x03 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0003a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x04 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0004a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x05 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0005a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x06 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0006a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x07 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0007a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x08 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0008a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x09 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\ta", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0a in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\na", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u000ba", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u000ca", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0d in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\ra", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0e in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u000ea", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0f in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u000fa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x10 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0010a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x11 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0011a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x12 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0012a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x13 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0013a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x14 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0014a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x15 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0015a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x16 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0016a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x17 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0017a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x18 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0018a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x19 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u0019a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1a in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u001aa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u001ba", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u001ca", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1d in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u001da", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1e in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u001ea", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1f in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u001fa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x20 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x21 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a!a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x22 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\"a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x23 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a#a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x24 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a$a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x25 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a%a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x26 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a&a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x27 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a'a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x28 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a(a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x29 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a)a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a+a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a,a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2f in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a/a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3a in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a:a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a;a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a<a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3d in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a=a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3e in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a>a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3f in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a?a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x40 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a@a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x41 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aAa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x42 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aBa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x43 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aCa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x44 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aDa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x45 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aEa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x46 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aFa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x47 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aGa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x48 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aHa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x49 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aIa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4a in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aJa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aKa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aLa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4d in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aMa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4e in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aNa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4f in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aOa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x50 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aPa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x51 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aQa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x52 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aRa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x53 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aSa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x54 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aTa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x55 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aUa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x56 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aVa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x57 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aWa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x58 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aXa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x59 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aYa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5a in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("aZa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a[a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\\a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5d in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a]a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5e in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a^a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x60 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a`a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a{a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a|a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7d in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a}a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7e in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a~a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7f in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("a\u007fa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x00 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0000a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x01 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0001a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x02 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0002a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x03 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0003a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x04 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0004a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x05 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0005a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x06 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0006a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x07 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0007a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x08 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0008a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x09 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\ta", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0a starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\na", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0b starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u000ba", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0c starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u000ca", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0d starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\ra", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0e starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u000ea", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0f starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u000fa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x10 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0010a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x11 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0011a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x12 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0012a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x13 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0013a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x14 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0014a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x15 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0015a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x16 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0016a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x17 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0017a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x18 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0018a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x19 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u0019a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1a starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u001aa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1b starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u001ba", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1c starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u001ca", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1d starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u001da", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1e starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u001ea", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1f starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u001fa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x20 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param(" a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x21 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("!a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x22 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\"a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x23 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("#a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x24 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("$a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x25 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("%a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x26 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("&a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x27 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("'a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x28 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("(a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x29 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param(")a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2b starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("+a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2c starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param(",a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2d starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("-a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2e starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param(".a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2f starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("/a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x30 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("0a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x31 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("1a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x32 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("2a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x33 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("3a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x34 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("4a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x35 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("5a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x36 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("6a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x37 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("7a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x38 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("8a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x39 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("9a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3a starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param(":a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3b starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param(";a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3c starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("<a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3d starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("=a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3e starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param(">a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3f starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("?a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x40 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("@a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x41 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Aa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x42 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ba", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x43 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ca", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x44 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Da", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x45 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ea", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x46 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Fa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x47 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ga", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x48 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ha", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x49 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ia", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4a starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ja", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4b starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ka", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4c starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("La", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4d starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ma", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4e starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Na", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4f starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Oa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x50 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Pa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x51 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Qa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x52 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ra", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x53 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Sa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x54 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ta", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x55 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ua", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x56 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Va", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x57 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Wa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x58 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Xa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x59 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Ya", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5a starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("Za", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5b starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("[a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5c starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\\a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5d starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("]a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5e starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("^a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5f starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("_a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x60 starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("`a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7b starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("{a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7c starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("|a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7d starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("}a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7e starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("~a", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7f starting a parameterised list key" {
  let l : Array[ListMember] = [
    member_item(item(SfToken("foo"), [param("\u007fa", SfInteger(1L))])),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: number - too big positive integer - serialize" {
  let it : Item = bare_item(SfInteger(1000000000000000L))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: number - too big negative integer - serialize" {
  let it : Item = bare_item(SfInteger(-1000000000000000L))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: number - too big positive decimal - serialize" {
  let it : Item = bare_item(SfDecimal(1000000000000.1))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: number - too big negative decimal - serialize" {
  let it : Item = bare_item(SfDecimal(-1000000000000.1))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: number - round positive odd decimal - serialize" {
  let it : Item = bare_item(SfDecimal(0.0015))
  match serialize_item(it) {
    Ok(s) => assert_eq(s, "0.002")
    Err(_) => fail("expected serialize to succeed")
  }
}

///|
test "httpwg-ser: number - round positive even decimal - serialize" {
  let it : Item = bare_item(SfDecimal(0.0025))
  match serialize_item(it) {
    Ok(s) => assert_eq(s, "0.002")
    Err(_) => fail("expected serialize to succeed")
  }
}

///|
test "httpwg-ser: number - round negative odd decimal - serialize" {
  let it : Item = bare_item(SfDecimal(-0.0015))
  match serialize_item(it) {
    Ok(s) => assert_eq(s, "-0.002")
    Err(_) => fail("expected serialize to succeed")
  }
}

///|
test "httpwg-ser: number - round negative even decimal - serialize" {
  let it : Item = bare_item(SfDecimal(-0.0025))
  match serialize_item(it) {
    Ok(s) => assert_eq(s, "-0.002")
    Err(_) => fail("expected serialize to succeed")
  }
}

///|
test "httpwg-ser: number - decimal round up to integer part - serialize" {
  let it : Item = bare_item(SfDecimal(9.9995))
  match serialize_item(it) {
    Ok(s) => assert_eq(s, "10.0")
    Err(_) => fail("expected serialize to succeed")
  }
}

///|
test "httpwg-ser: string-generated - 0x00 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0000"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x01 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0001"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x02 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0002"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x03 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0003"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x04 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0004"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x05 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0005"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x06 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0006"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x07 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0007"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x08 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0008"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x09 in string - serialise only" {
  let it : Item = bare_item(SfString("\t"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x0a in string - serialise only" {
  let it : Item = bare_item(SfString("\n"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x0b in string - serialise only" {
  let it : Item = bare_item(SfString("\u000b"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x0c in string - serialise only" {
  let it : Item = bare_item(SfString("\u000c"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x0d in string - serialise only" {
  let it : Item = bare_item(SfString("\r"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x0e in string - serialise only" {
  let it : Item = bare_item(SfString("\u000e"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x0f in string - serialise only" {
  let it : Item = bare_item(SfString("\u000f"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x10 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0010"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x11 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0011"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x12 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0012"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x13 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0013"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x14 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0014"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x15 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0015"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x16 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0016"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x17 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0017"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x18 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0018"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x19 in string - serialise only" {
  let it : Item = bare_item(SfString("\u0019"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x1a in string - serialise only" {
  let it : Item = bare_item(SfString("\u001a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x1b in string - serialise only" {
  let it : Item = bare_item(SfString("\u001b"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x1c in string - serialise only" {
  let it : Item = bare_item(SfString("\u001c"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x1d in string - serialise only" {
  let it : Item = bare_item(SfString("\u001d"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x1e in string - serialise only" {
  let it : Item = bare_item(SfString("\u001e"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x1f in string - serialise only" {
  let it : Item = bare_item(SfString("\u001f"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x7f in string - serialise only" {
  let it : Item = bare_item(SfString("\u007f"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x00 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0000a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x01 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0001a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x02 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0002a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x03 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0003a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x04 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0004a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x05 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0005a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x06 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0006a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x07 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0007a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x08 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0008a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x09 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\ta"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0a in token - serialise only" {
  let it : Item = bare_item(SfToken("a\na"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0b in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u000ba"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0c in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u000ca"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0d in token - serialise only" {
  let it : Item = bare_item(SfToken("a\ra"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0e in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u000ea"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0f in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u000fa"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x10 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0010a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x11 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0011a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x12 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0012a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x13 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0013a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x14 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0014a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x15 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0015a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x16 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0016a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x17 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0017a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x18 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0018a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x19 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u0019a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1a in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u001aa"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1b in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u001ba"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1c in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u001ca"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1d in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u001da"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1e in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u001ea"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1f in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u001fa"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x20 in token - serialise only" {
  let it : Item = bare_item(SfToken("a a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x22 in token - serialise only" {
  let it : Item = bare_item(SfToken("a\"a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x28 in token - serialise only" {
  let it : Item = bare_item(SfToken("a(a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x29 in token - serialise only" {
  let it : Item = bare_item(SfToken("a)a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x2c in token - serialise only" {
  let it : Item = bare_item(SfToken("a,a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3b in token - serialise only" {
  let it : Item = bare_item(SfToken("a;a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3c in token - serialise only" {
  let it : Item = bare_item(SfToken("a<a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3d in token - serialise only" {
  let it : Item = bare_item(SfToken("a=a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3e in token - serialise only" {
  let it : Item = bare_item(SfToken("a>a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3f in token - serialise only" {
  let it : Item = bare_item(SfToken("a?a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x40 in token - serialise only" {
  let it : Item = bare_item(SfToken("a@a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5b in token - serialise only" {
  let it : Item = bare_item(SfToken("a[a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5c in token - serialise only" {
  let it : Item = bare_item(SfToken("a\\a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5d in token - serialise only" {
  let it : Item = bare_item(SfToken("a]a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7b in token - serialise only" {
  let it : Item = bare_item(SfToken("a{a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7d in token - serialise only" {
  let it : Item = bare_item(SfToken("a}a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7f in token - serialise only" {
  let it : Item = bare_item(SfToken("a\u007fa"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x00 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0000a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x01 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0001a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x02 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0002a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x03 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0003a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x04 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0004a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x05 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0005a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x06 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0006a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x07 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0007a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x08 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0008a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x09 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\ta"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0a starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\na"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0b starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u000ba"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0c starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u000ca"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0d starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\ra"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0e starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u000ea"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0f starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u000fa"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x10 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0010a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x11 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0011a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x12 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0012a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x13 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0013a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x14 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0014a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x15 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0015a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x16 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0016a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x17 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0017a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x18 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0018a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x19 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u0019a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1a starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u001aa"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1b starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u001ba"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1c starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u001ca"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1d starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u001da"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1e starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u001ea"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1f starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u001fa"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x20 starting a token - serialise only" {
  let it : Item = bare_item(SfToken(" a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x21 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("!a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x22 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\"a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x23 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("#a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x24 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("$a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x25 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("%a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x26 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("&a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x27 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("'a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x28 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("(a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x29 starting a token - serialise only" {
  let it : Item = bare_item(SfToken(")a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x2b starting a token - serialise only" {
  let it : Item = bare_item(SfToken("+a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x2c starting a token - serialise only" {
  let it : Item = bare_item(SfToken(",a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x2d starting a token - serialise only" {
  let it : Item = bare_item(SfToken("-a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x2e starting a token - serialise only" {
  let it : Item = bare_item(SfToken(".a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x2f starting a token - serialise only" {
  let it : Item = bare_item(SfToken("/a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x30 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("0a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x31 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("1a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x32 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("2a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x33 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("3a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x34 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("4a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x35 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("5a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x36 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("6a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x37 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("7a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x38 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("8a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x39 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("9a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3a starting a token - serialise only" {
  let it : Item = bare_item(SfToken(":a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3b starting a token - serialise only" {
  let it : Item = bare_item(SfToken(";a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3c starting a token - serialise only" {
  let it : Item = bare_item(SfToken("<a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3d starting a token - serialise only" {
  let it : Item = bare_item(SfToken("=a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3e starting a token - serialise only" {
  let it : Item = bare_item(SfToken(">a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3f starting a token - serialise only" {
  let it : Item = bare_item(SfToken("?a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x40 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("@a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5b starting a token - serialise only" {
  let it : Item = bare_item(SfToken("[a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5c starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\\a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5d starting a token - serialise only" {
  let it : Item = bare_item(SfToken("]a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5e starting a token - serialise only" {
  let it : Item = bare_item(SfToken("^a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5f starting a token - serialise only" {
  let it : Item = bare_item(SfToken("_a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x60 starting a token - serialise only" {
  let it : Item = bare_item(SfToken("`a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7b starting a token - serialise only" {
  let it : Item = bare_item(SfToken("{a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7c starting a token - serialise only" {
  let it : Item = bare_item(SfToken("|a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7d starting a token - serialise only" {
  let it : Item = bare_item(SfToken("}a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7e starting a token - serialise only" {
  let it : Item = bare_item(SfToken("~a"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7f starting a token - serialise only" {
  let it : Item = bare_item(SfToken("\u007fa"))
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}
