# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] - 2026-08-27

### Added
- Complete RFC 9651 top-level field support:
  - `parse_item` / `serialize_item`
  - `parse_list` / `serialize_list`
  - `parse_dictionary` / `serialize_dictionary`
- Complete RFC 9651 bare item types:
  - `SfInteger(Int64)`: 15-digit range `[-999999999999999, 999999999999999]`
  - `SfDecimal(Double)`: 12-digit integer, 1-3 fractional digits with canonical round-half-to-even serialization
  - `SfString(String)`: strict ASCII string with escaping
  - `SfToken(String)`: RFC token characters
  - `SfByteSequence(Bytes)`: RFC 4648 Base64 encoding/decoding
  - `SfBoolean(Bool)`: boolean items and parameter shorthand
  - `SfDate(Int64)`: integer timestamp with `@` prefix
  - `SfDisplayString(String)`: UTF-8 percent-encoded display strings (`%"..."`)
- Container structures:
  - `InnerList`: parenthesized item lists with parameters `(item1 item2);param=1`
  - `ListMember`: variant enum (`Item` / `InnerList`) for Lists and Dictionaries
  - `DictionaryMember`: ordered key-value pairs with duplicate key overwrite semantics (last key wins)
  - `Parameter`: ordered parameters with boolean shorthand support
- Conformance & Testing:
  - Integrated full [HTTPWG structured-field-tests](https://github.com/httpwg/structured-field-tests) test suite (1,591 parsing vectors + 544 serialization vectors = 2,135 official vectors).
  - 100% pass rate (2,181 / 2,181 total automated tests passing).
- Runnable examples in `examples/main`:
  - Item parsing and canonical serialization
  - List parsing with Inner Lists and parameters
  - Dictionary parsing with boolean shorthand and type inspection
- GitHub Actions CI verifying `moon check --deny-warn`, `moon test`, `moon info`, and `moon fmt --check`.
