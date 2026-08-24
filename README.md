# moon-sfv

[![CI](https://github.com/Sam-Hui-dot/moon-sfv/actions/workflows/ci.yml/badge.svg)](https://github.com/Sam-Hui-dot/moon-sfv/actions/workflows/ci.yml)

`moon-sfv` is an original MoonBit implementation of Structured Field Values
for HTTP as defined by [RFC 9651](https://www.rfc-editor.org/rfc/rfc9651.html).
It aims to give MoonBit HTTP clients, servers, proxies, and WebAssembly
applications a small, dependency-free parser and serializer for standards-based
HTTP field values.

## Project status

The first complete Item parsing and serialization path is operational. The
library currently supports Boolean, Integer, String, and Token bare items,
ordered parameters, strict error handling, and canonical output for those
types. The implementation is covered by 24 tests and checked by GitHub Actions.

Decimal, Byte Sequence, Date, Display String, List, Dictionary, and Inner List
support remain on the public roadmap.

## Planned scope

- Parse and serialize the three top-level field types: Item, List, and
  Dictionary.
- Support Inner Lists and ordered parameters.
- Support all RFC 9651 bare item types: Integer, Decimal, String, Token, Byte
  Sequence, Boolean, Date, and Display String.
- Reject invalid input using the strict processing rules required by RFC 9651.
- Produce canonical serialized field values.
- Validate behavior against the HTTP Working Group structured-field test
  vectors.
- Publish API documentation, runnable examples, CI, and a Mooncakes release.

## Initial API

```moonbit
match @sfv.parse_item("example;secure;level=2") {
  Ok(item) => match @sfv.serialize_item(item) {
    Ok(text) => println(text)
    Err(_) => println("serialization failed")
  }
  Err(_) => println("parsing failed")
}
```

The example serializes to the canonical value `example;secure;level=2`.

## Development

Run the standard checks with the current MoonBit toolchain:

```text
moon check --deny-warn
moon test
moon fmt --check
```

## Originality and references

This is an original MoonBit implementation based on the algorithms and data
model in RFC 9651. It is not a source-code port of an existing implementation.

Normative and test references:

- [RFC 9651: Structured Field Values for HTTP](https://www.rfc-editor.org/rfc/rfc9651.html)
- [HTTPWG structured-field-tests](https://github.com/httpwg/structured-field-tests)

If HTTPWG test vectors are vendored into this repository, their Revised BSD
license and attribution will be retained.

## License

The MoonBit implementation is available under the MIT License.
