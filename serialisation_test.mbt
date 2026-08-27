///| Serialisation test vectors generated from httpwg/structured-field-tests/serialisation-tests

///| BSD 3-Clause License - IETF Trust

///|
test "httpwg-ser: key-generated - 0x00 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0000a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x01 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0001a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x02 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0002a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x03 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0003a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x04 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0004a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x05 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0005a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x06 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0006a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x07 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0007a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x08 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0008a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x09 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\ta",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0a in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\na",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u000ba",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u000ca",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0d in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\ra",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0e in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u000ea",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0f in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u000fa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x10 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0010a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x11 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0011a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x12 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0012a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x13 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0013a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x14 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0014a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x15 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0015a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x16 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0016a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x17 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0017a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x18 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0018a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x19 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u0019a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1a in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u001aa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u001ba",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u001ca",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1d in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u001da",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1e in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u001ea",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1f in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u001fa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x20 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x21 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a!a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x22 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\"a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x23 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a#a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x24 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a$a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x25 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a%a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x26 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a&a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x27 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a'a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x28 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a(a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x29 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a)a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a+a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a,a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2f in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a/a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3a in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a:a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a;a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a<a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3d in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a=a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3e in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a>a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3f in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a?a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x40 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a@a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x41 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aAa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x42 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aBa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x43 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aCa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x44 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aDa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x45 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aEa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x46 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aFa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x47 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aGa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x48 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aHa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x49 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aIa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4a in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aJa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aKa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aLa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4d in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aMa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4e in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aNa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4f in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aOa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x50 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aPa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x51 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aQa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x52 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aRa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x53 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aSa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x54 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aTa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x55 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aUa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x56 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aVa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x57 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aWa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x58 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aXa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x59 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aYa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5a in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "aZa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a[a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\\a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5d in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a]a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5e in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a^a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x60 in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a`a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7b in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a{a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7c in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a|a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7d in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a}a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7e in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a~a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7f in dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "a\u007fa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x00 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0000a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x01 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0001a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x02 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0002a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x03 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0003a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x04 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0004a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x05 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0005a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x06 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0006a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x07 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0007a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x08 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0008a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x09 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\ta",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0a starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\na",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u000ba",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u000ca",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\ra",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u000ea",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u000fa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x10 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0010a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x11 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0011a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x12 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0012a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x13 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0013a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x14 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0014a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x15 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0015a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x16 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0016a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x17 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0017a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x18 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0018a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x19 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u0019a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1a starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u001aa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u001ba",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u001ca",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u001da",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u001ea",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u001fa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x20 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: " a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x21 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "!a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x22 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\"a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x23 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "#a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x24 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "$a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x25 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "%a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x26 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "&a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x27 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "'a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x28 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "(a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x29 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: ")a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "+a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: ",a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "-a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: ".a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "/a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x30 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "0a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x31 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "1a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x32 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "2a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x33 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "3a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x34 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "4a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x35 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "5a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x36 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "6a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x37 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "7a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x38 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "8a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x39 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "9a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3a starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: ":a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: ";a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "<a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "=a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: ">a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "?a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x40 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "@a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x41 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Aa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x42 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ba",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x43 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ca",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x44 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Da",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x45 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ea",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x46 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Fa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x47 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ga",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x48 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ha",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x49 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ia",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4a starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ja",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ka",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "La",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ma",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Na",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Oa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x50 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Pa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x51 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Qa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x52 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ra",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x53 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Sa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x54 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ta",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x55 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ua",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x56 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Va",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x57 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Wa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x58 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Xa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x59 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Ya",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5a starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "Za",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "[a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\\a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "]a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "^a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "_a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x60 starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "`a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7b starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "{a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7c starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "|a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7d starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "}a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7e starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "~a",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7f starting a dictionary key - serialise only" {
  let d : Array[DictionaryMember] = [
    {
      key: "\u007fa",
      value: ListMember::Item({ value: SfInteger(1L), parameters: [] }),
    },
  ]
  match serialize_dictionary(d) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x00 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0000a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x01 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0001a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x02 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0002a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x03 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0003a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x04 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0004a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x05 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0005a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x06 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0006a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x07 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0007a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x08 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0008a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x09 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\ta", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0a in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\na", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u000ba", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u000ca", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0d in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\ra", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0e in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u000ea", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0f in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u000fa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x10 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0010a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x11 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0011a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x12 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0012a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x13 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0013a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x14 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0014a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x15 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0015a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x16 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0016a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x17 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0017a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x18 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0018a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x19 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u0019a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1a in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u001aa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u001ba", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u001ca", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1d in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u001da", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1e in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u001ea", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1f in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u001fa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x20 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x21 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a!a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x22 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\"a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x23 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a#a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x24 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a$a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x25 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a%a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x26 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a&a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x27 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a'a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x28 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a(a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x29 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a)a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a+a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a,a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2f in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a/a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3a in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a:a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a;a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a<a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3d in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a=a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3e in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a>a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3f in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a?a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x40 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a@a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x41 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aAa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x42 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aBa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x43 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aCa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x44 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aDa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x45 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aEa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x46 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aFa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x47 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aGa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x48 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aHa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x49 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aIa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4a in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aJa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aKa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aLa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4d in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aMa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4e in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aNa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4f in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aOa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x50 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aPa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x51 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aQa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x52 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aRa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x53 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aSa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x54 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aTa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x55 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aUa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x56 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aVa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x57 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aWa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x58 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aXa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x59 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aYa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5a in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "aZa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a[a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\\a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5d in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a]a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5e in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a^a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x60 in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a`a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7b in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a{a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7c in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a|a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7d in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a}a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7e in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a~a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7f in parameterised list key - serialise only" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "a\u007fa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x00 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0000a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x01 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0001a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x02 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0002a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x03 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0003a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x04 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0004a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x05 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0005a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x06 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0006a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x07 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0007a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x08 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0008a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x09 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\ta", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0a starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\na", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0b starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u000ba", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0c starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u000ca", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0d starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\ra", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0e starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u000ea", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x0f starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u000fa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x10 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0010a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x11 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0011a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x12 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0012a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x13 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0013a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x14 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0014a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x15 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0015a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x16 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0016a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x17 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0017a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x18 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0018a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x19 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u0019a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1a starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u001aa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1b starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u001ba", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1c starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u001ca", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1d starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u001da", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1e starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u001ea", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x1f starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u001fa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x20 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: " a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x21 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "!a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x22 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\"a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x23 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "#a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x24 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "$a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x25 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "%a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x26 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "&a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x27 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "'a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x28 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "(a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x29 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: ")a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2b starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "+a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2c starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: ",a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2d starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "-a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2e starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: ".a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x2f starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "/a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x30 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "0a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x31 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "1a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x32 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "2a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x33 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "3a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x34 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "4a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x35 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "5a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x36 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "6a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x37 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "7a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x38 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "8a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x39 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "9a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3a starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: ":a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3b starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: ";a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3c starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "<a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3d starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "=a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3e starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: ">a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x3f starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "?a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x40 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "@a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x41 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Aa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x42 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ba", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x43 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ca", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x44 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Da", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x45 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ea", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x46 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Fa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x47 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ga", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x48 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ha", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x49 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ia", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4a starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ja", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4b starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ka", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4c starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "La", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4d starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ma", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4e starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Na", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x4f starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Oa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x50 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Pa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x51 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Qa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x52 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ra", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x53 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Sa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x54 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ta", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x55 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ua", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x56 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Va", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x57 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Wa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x58 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Xa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x59 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Ya", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5a starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "Za", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5b starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "[a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5c starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\\a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5d starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "]a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5e starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "^a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x5f starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "_a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x60 starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "`a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7b starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "{a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7c starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "|a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7d starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "}a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7e starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "~a", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: key-generated - 0x7f starting a parameterised list key" {
  let l : Array[ListMember] = [
    ListMember::Item({
      value: SfToken("foo"),
      parameters: [{ key: "\u007fa", value: SfInteger(1L) }],
    }),
  ]
  match serialize_list(l) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: number - too big positive integer - serialize" {
  let it : Item = { value: SfInteger(1000000000000000L), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: number - too big negative integer - serialize" {
  let it : Item = { value: SfInteger(-1000000000000000L), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: number - too big positive decimal - serialize" {
  let it : Item = { value: SfDecimal(1000000000000.1), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: number - too big negative decimal - serialize" {
  let it : Item = { value: SfDecimal(-1000000000000.1), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: number - round positive odd decimal - serialize" {
  let it : Item = { value: SfDecimal(0.0015), parameters: [] }
  match serialize_item(it) {
    Ok(s) => assert_eq(s, "0.002")
    Err(_) => fail("expected serialize to succeed")
  }
}

///|
test "httpwg-ser: number - round positive even decimal - serialize" {
  let it : Item = { value: SfDecimal(0.0025), parameters: [] }
  match serialize_item(it) {
    Ok(s) => assert_eq(s, "0.002")
    Err(_) => fail("expected serialize to succeed")
  }
}

///|
test "httpwg-ser: number - round negative odd decimal - serialize" {
  let it : Item = { value: SfDecimal(-0.0015), parameters: [] }
  match serialize_item(it) {
    Ok(s) => assert_eq(s, "-0.002")
    Err(_) => fail("expected serialize to succeed")
  }
}

///|
test "httpwg-ser: number - round negative even decimal - serialize" {
  let it : Item = { value: SfDecimal(-0.0025), parameters: [] }
  match serialize_item(it) {
    Ok(s) => assert_eq(s, "-0.002")
    Err(_) => fail("expected serialize to succeed")
  }
}

///|
test "httpwg-ser: number - decimal round up to integer part - serialize" {
  let it : Item = { value: SfDecimal(9.9995), parameters: [] }
  match serialize_item(it) {
    Ok(s) => assert_eq(s, "10.0")
    Err(_) => fail("expected serialize to succeed")
  }
}

///|
test "httpwg-ser: string-generated - 0x00 in string - serialise only" {
  let it : Item = { value: SfString("\u0000"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x01 in string - serialise only" {
  let it : Item = { value: SfString("\u0001"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x02 in string - serialise only" {
  let it : Item = { value: SfString("\u0002"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x03 in string - serialise only" {
  let it : Item = { value: SfString("\u0003"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x04 in string - serialise only" {
  let it : Item = { value: SfString("\u0004"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x05 in string - serialise only" {
  let it : Item = { value: SfString("\u0005"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x06 in string - serialise only" {
  let it : Item = { value: SfString("\u0006"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x07 in string - serialise only" {
  let it : Item = { value: SfString("\u0007"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x08 in string - serialise only" {
  let it : Item = { value: SfString("\u0008"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x09 in string - serialise only" {
  let it : Item = { value: SfString("\t"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x0a in string - serialise only" {
  let it : Item = { value: SfString("\n"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x0b in string - serialise only" {
  let it : Item = { value: SfString("\u000b"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x0c in string - serialise only" {
  let it : Item = { value: SfString("\u000c"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x0d in string - serialise only" {
  let it : Item = { value: SfString("\r"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x0e in string - serialise only" {
  let it : Item = { value: SfString("\u000e"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x0f in string - serialise only" {
  let it : Item = { value: SfString("\u000f"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x10 in string - serialise only" {
  let it : Item = { value: SfString("\u0010"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x11 in string - serialise only" {
  let it : Item = { value: SfString("\u0011"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x12 in string - serialise only" {
  let it : Item = { value: SfString("\u0012"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x13 in string - serialise only" {
  let it : Item = { value: SfString("\u0013"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x14 in string - serialise only" {
  let it : Item = { value: SfString("\u0014"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x15 in string - serialise only" {
  let it : Item = { value: SfString("\u0015"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x16 in string - serialise only" {
  let it : Item = { value: SfString("\u0016"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x17 in string - serialise only" {
  let it : Item = { value: SfString("\u0017"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x18 in string - serialise only" {
  let it : Item = { value: SfString("\u0018"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x19 in string - serialise only" {
  let it : Item = { value: SfString("\u0019"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x1a in string - serialise only" {
  let it : Item = { value: SfString("\u001a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x1b in string - serialise only" {
  let it : Item = { value: SfString("\u001b"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x1c in string - serialise only" {
  let it : Item = { value: SfString("\u001c"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x1d in string - serialise only" {
  let it : Item = { value: SfString("\u001d"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x1e in string - serialise only" {
  let it : Item = { value: SfString("\u001e"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x1f in string - serialise only" {
  let it : Item = { value: SfString("\u001f"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: string-generated - 0x7f in string - serialise only" {
  let it : Item = { value: SfString("\u007f"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x00 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0000a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x01 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0001a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x02 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0002a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x03 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0003a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x04 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0004a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x05 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0005a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x06 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0006a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x07 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0007a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x08 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0008a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x09 in token - serialise only" {
  let it : Item = { value: SfToken("a\ta"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0a in token - serialise only" {
  let it : Item = { value: SfToken("a\na"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0b in token - serialise only" {
  let it : Item = { value: SfToken("a\u000ba"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0c in token - serialise only" {
  let it : Item = { value: SfToken("a\u000ca"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0d in token - serialise only" {
  let it : Item = { value: SfToken("a\ra"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0e in token - serialise only" {
  let it : Item = { value: SfToken("a\u000ea"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0f in token - serialise only" {
  let it : Item = { value: SfToken("a\u000fa"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x10 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0010a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x11 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0011a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x12 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0012a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x13 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0013a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x14 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0014a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x15 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0015a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x16 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0016a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x17 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0017a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x18 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0018a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x19 in token - serialise only" {
  let it : Item = { value: SfToken("a\u0019a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1a in token - serialise only" {
  let it : Item = { value: SfToken("a\u001aa"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1b in token - serialise only" {
  let it : Item = { value: SfToken("a\u001ba"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1c in token - serialise only" {
  let it : Item = { value: SfToken("a\u001ca"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1d in token - serialise only" {
  let it : Item = { value: SfToken("a\u001da"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1e in token - serialise only" {
  let it : Item = { value: SfToken("a\u001ea"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1f in token - serialise only" {
  let it : Item = { value: SfToken("a\u001fa"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x20 in token - serialise only" {
  let it : Item = { value: SfToken("a a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x22 in token - serialise only" {
  let it : Item = { value: SfToken("a\"a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x28 in token - serialise only" {
  let it : Item = { value: SfToken("a(a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x29 in token - serialise only" {
  let it : Item = { value: SfToken("a)a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x2c in token - serialise only" {
  let it : Item = { value: SfToken("a,a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3b in token - serialise only" {
  let it : Item = { value: SfToken("a;a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3c in token - serialise only" {
  let it : Item = { value: SfToken("a<a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3d in token - serialise only" {
  let it : Item = { value: SfToken("a=a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3e in token - serialise only" {
  let it : Item = { value: SfToken("a>a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3f in token - serialise only" {
  let it : Item = { value: SfToken("a?a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x40 in token - serialise only" {
  let it : Item = { value: SfToken("a@a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5b in token - serialise only" {
  let it : Item = { value: SfToken("a[a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5c in token - serialise only" {
  let it : Item = { value: SfToken("a\\a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5d in token - serialise only" {
  let it : Item = { value: SfToken("a]a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7b in token - serialise only" {
  let it : Item = { value: SfToken("a{a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7d in token - serialise only" {
  let it : Item = { value: SfToken("a}a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7f in token - serialise only" {
  let it : Item = { value: SfToken("a\u007fa"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x00 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0000a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x01 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0001a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x02 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0002a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x03 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0003a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x04 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0004a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x05 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0005a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x06 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0006a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x07 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0007a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x08 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0008a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x09 starting a token - serialise only" {
  let it : Item = { value: SfToken("\ta"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0a starting a token - serialise only" {
  let it : Item = { value: SfToken("\na"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0b starting a token - serialise only" {
  let it : Item = { value: SfToken("\u000ba"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0c starting a token - serialise only" {
  let it : Item = { value: SfToken("\u000ca"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0d starting a token - serialise only" {
  let it : Item = { value: SfToken("\ra"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0e starting a token - serialise only" {
  let it : Item = { value: SfToken("\u000ea"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x0f starting a token - serialise only" {
  let it : Item = { value: SfToken("\u000fa"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x10 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0010a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x11 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0011a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x12 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0012a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x13 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0013a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x14 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0014a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x15 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0015a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x16 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0016a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x17 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0017a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x18 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0018a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x19 starting a token - serialise only" {
  let it : Item = { value: SfToken("\u0019a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1a starting a token - serialise only" {
  let it : Item = { value: SfToken("\u001aa"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1b starting a token - serialise only" {
  let it : Item = { value: SfToken("\u001ba"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1c starting a token - serialise only" {
  let it : Item = { value: SfToken("\u001ca"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1d starting a token - serialise only" {
  let it : Item = { value: SfToken("\u001da"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1e starting a token - serialise only" {
  let it : Item = { value: SfToken("\u001ea"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x1f starting a token - serialise only" {
  let it : Item = { value: SfToken("\u001fa"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x20 starting a token - serialise only" {
  let it : Item = { value: SfToken(" a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x21 starting a token - serialise only" {
  let it : Item = { value: SfToken("!a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x22 starting a token - serialise only" {
  let it : Item = { value: SfToken("\"a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x23 starting a token - serialise only" {
  let it : Item = { value: SfToken("#a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x24 starting a token - serialise only" {
  let it : Item = { value: SfToken("$a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x25 starting a token - serialise only" {
  let it : Item = { value: SfToken("%a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x26 starting a token - serialise only" {
  let it : Item = { value: SfToken("&a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x27 starting a token - serialise only" {
  let it : Item = { value: SfToken("'a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x28 starting a token - serialise only" {
  let it : Item = { value: SfToken("(a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x29 starting a token - serialise only" {
  let it : Item = { value: SfToken(")a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x2b starting a token - serialise only" {
  let it : Item = { value: SfToken("+a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x2c starting a token - serialise only" {
  let it : Item = { value: SfToken(",a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x2d starting a token - serialise only" {
  let it : Item = { value: SfToken("-a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x2e starting a token - serialise only" {
  let it : Item = { value: SfToken(".a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x2f starting a token - serialise only" {
  let it : Item = { value: SfToken("/a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x30 starting a token - serialise only" {
  let it : Item = { value: SfToken("0a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x31 starting a token - serialise only" {
  let it : Item = { value: SfToken("1a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x32 starting a token - serialise only" {
  let it : Item = { value: SfToken("2a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x33 starting a token - serialise only" {
  let it : Item = { value: SfToken("3a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x34 starting a token - serialise only" {
  let it : Item = { value: SfToken("4a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x35 starting a token - serialise only" {
  let it : Item = { value: SfToken("5a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x36 starting a token - serialise only" {
  let it : Item = { value: SfToken("6a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x37 starting a token - serialise only" {
  let it : Item = { value: SfToken("7a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x38 starting a token - serialise only" {
  let it : Item = { value: SfToken("8a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x39 starting a token - serialise only" {
  let it : Item = { value: SfToken("9a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3a starting a token - serialise only" {
  let it : Item = { value: SfToken(":a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3b starting a token - serialise only" {
  let it : Item = { value: SfToken(";a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3c starting a token - serialise only" {
  let it : Item = { value: SfToken("<a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3d starting a token - serialise only" {
  let it : Item = { value: SfToken("=a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3e starting a token - serialise only" {
  let it : Item = { value: SfToken(">a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x3f starting a token - serialise only" {
  let it : Item = { value: SfToken("?a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x40 starting a token - serialise only" {
  let it : Item = { value: SfToken("@a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5b starting a token - serialise only" {
  let it : Item = { value: SfToken("[a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5c starting a token - serialise only" {
  let it : Item = { value: SfToken("\\a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5d starting a token - serialise only" {
  let it : Item = { value: SfToken("]a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5e starting a token - serialise only" {
  let it : Item = { value: SfToken("^a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x5f starting a token - serialise only" {
  let it : Item = { value: SfToken("_a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x60 starting a token - serialise only" {
  let it : Item = { value: SfToken("`a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7b starting a token - serialise only" {
  let it : Item = { value: SfToken("{a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7c starting a token - serialise only" {
  let it : Item = { value: SfToken("|a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7d starting a token - serialise only" {
  let it : Item = { value: SfToken("}a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7e starting a token - serialise only" {
  let it : Item = { value: SfToken("~a"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}

///|
test "httpwg-ser: token-generated - 0x7f starting a token - serialise only" {
  let it : Item = { value: SfToken("\u007fa"), parameters: [] }
  match serialize_item(it) {
    Ok(_) => fail("expected serialize to fail")
    Err(_) => ()
  }
}
