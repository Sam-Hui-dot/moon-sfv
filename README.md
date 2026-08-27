# moon-sfv

[![CI](https://github.com/Sam-Hui-dot/moon-sfv/actions/workflows/ci.yml/badge.svg)](https://github.com/Sam-Hui-dot/moon-sfv/actions/workflows/ci.yml)

A strict RFC 9651 Structured Field Values parser and serializer for MoonBit.

## Why

[RFC 9651 (Structured Field Values for HTTP)](https://www.rfc-editor.org/rfc/rfc9651.html) specifies a set of data types and parsing / serializing algorithms for HTTP header and trailer fields. It provides a shared type system and unambiguous canonical text representation for modern HTTP specifications (such as HTTP Caching, Digest Fields, Priority, Client Hints, and RateLimit headers).

`moon-sfv` provides a small, fast, zero-dependency implementation of RFC 9651 in pure MoonBit. It allows MoonBit HTTP clients, servers, reverse proxies, and WebAssembly services to safely parse and generate compliant HTTP field values.

## Features

| Feature | Parse | Serialize | Notes |
|:---|:---:|:---:|:---|
| **Item** | ✅ | ✅ | Top-level parameterized values |
| **List** | ✅ | ✅ | Top-level comma-separated arrays |
| **Dictionary** | ✅ | ✅ | Top-level comma-separated key-value maps |
| **Inner List** | ✅ | ✅ | Parenthesized item sequences `(item1 item2)` |
| **Parameters** | ✅ | ✅ | Ordered semicolon key-value pairs `;k=v` |
| **Integer** | ✅ | ✅ | 64-bit integers in range `±999,999,999,999,999` |
| **Decimal** | ✅ | ✅ | 12 integer digits, 1–3 fractional digits, canonical round-half-even |
| **String** | ✅ | ✅ | ASCII strings with strict `\"` and `\\` escaping |
| **Token** | ✅ | ✅ | Valid RFC identifiers and MIME/symbol tokens |
| **Byte Sequence** | ✅ | ✅ | Base64-encoded binary content `:...:` |
| **Boolean** | ✅ | ✅ | `?1` (true), `?0` (false), and parameter shorthand |
| **Date** | ✅ | ✅ | Unix timestamps with `@...` prefix |
| **Display String** | ✅ | ✅ | UTF-8 percent-encoded display strings `%"..."` |

## Standards Compliance

- **RFC 9651 Conformance**: Strictly follows RFC 9651 grammar, numeric bounds, whitespace handling, and duplicate key replacement semantics.
- **HTTPWG Test Suite**: Integrated with official test vectors from [httpwg/structured-field-tests](https://github.com/httpwg/structured-field-tests).
  - **Parsing test vectors**: 1,591 passed / 1,591 total (100%)
  - **Serialization test vectors**: 544 passed / 544 total (100%)
  - **Unit tests**: 46 passed / 46 total (100%)
  - **Total automated tests**: **2,181 passed / 2,181 total (100%)**

## Installation

Add `moon-sfv` to your MoonBit project:

```bash
moon add Sam-Hui-dot/moon-sfv
```

Or add it directly to your `moon.pkg` / `moon.mod.json`:

```moonbit
import {
  "Sam-Hui-dot/moon-sfv" @sfv,
}
```

## Usage

### 1. Item

```moonbit
let input = "example;secure;level=2"

match @sfv.parse_item(input) {
  Ok(item) => {
    // item.value is BareItem::SfToken("example")
    // item.parameters has { "secure": true, "level": 2 }
    match @sfv.serialize_item(item) {
      Ok(canonical) => println(canonical) // "example;secure;level=2"
      Err(_) => println("Serialization failed")
    }
  }
  Err(_) => println("Parsing failed")
}
```

### 2. List

```moonbit
let input = "text/html;q=1.0, (\"gzip\" \"br\");level=9"

match @sfv.parse_list(input) {
  Ok(list) => {
    // list contains Item and InnerList members
    match @sfv.serialize_list(list) {
      Ok(canonical) => println(canonical)
      Err(_) => println("Serialization failed")
    }
  }
  Err(_) => println("Parsing failed")
}
```

### 3. Dictionary

```moonbit
let input = "en=\"Applepie\", da=:w4ZibGV0w6ZydGUK:, active, flags=(x y)"

match @sfv.parse_dictionary(input) {
  Ok(dict) => {
    // dict contains ordered key-value pairs with boolean shorthand support
    match @sfv.serialize_dictionary(dict) {
      Ok(canonical) => println(canonical)
      Err(_) => println("Serialization failed")
    }
  }
  Err(_) => println("Parsing failed")
}
```

## API Reference

### Core Types

```moonbit
pub(all) enum BareItem {
  SfInteger(Int64)
  SfDecimal(Double)
  SfString(String)
  SfToken(String)
  SfByteSequence(Bytes)
  SfBoolean(Bool)
  SfDate(Int64)
  SfDisplayString(String)
} derive(Eq, Debug)

pub(all) struct Parameter {
  key : String
  value : BareItem
} derive(Eq, Debug)

pub(all) struct Item {
  value : BareItem
  parameters : Array[Parameter]
} derive(Eq, Debug)

pub(all) struct InnerList {
  items : Array[Item]
  parameters : Array[Parameter]
} derive(Eq, Debug)

pub(all) enum ListMember {
  Item(Item)
  InnerList(InnerList)
} derive(Eq, Debug)

pub(all) struct DictionaryMember {
  key : String
  value : ListMember
} derive(Eq, Debug)
```

### Parsing and Serialization Functions

```moonbit
pub fn parse_item(String) -> Result[Item, ParseError]
pub fn serialize_item(Item) -> Result[String, SerializeError]

pub fn parse_list(String) -> Result[Array[ListMember], ParseError]
pub fn serialize_list(Array[ListMember]) -> Result[String, SerializeError]

pub fn parse_dictionary(String) -> Result[Array[DictionaryMember], ParseError]
pub fn serialize_dictionary(Array[DictionaryMember]) -> Result[String, SerializeError]

pub fn base64_encode(Bytes) -> String
pub fn base64_decode(String) -> Bytes?

pub fn string_to_utf8_bytes(String) -> Array[Byte]
pub fn utf8_bytes_to_string(Array[Byte]) -> String?
```

## Testing

Run the full verification suite with the MoonBit toolchain:

```bash
moon check --deny-warn
moon test
moon fmt --check
```

Run the interactive examples:

```bash
moon run examples/main
```

## Status

`moon-sfv` is at version **v0.1.0** (Release Candidate). All RFC 9651 bare item types, container types, and canonical serialization rules are implemented and validated against the HTTP Working Group test vectors.

## License and Attribution

- `moon-sfv` is licensed under the [MIT License](LICENSE).
- Vendored test vectors in `test-vectors/structured-field-tests` are subject to the [IETF Trust BSD 3-Clause License](test-vectors/structured-field-tests/LICENSE.md) (Copyright &copy; 2018- IETF Trust and the authors).
