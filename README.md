# moon-sfv

`moon-sfv` is an original MoonBit implementation of Structured Field Values
for HTTP as defined by [RFC 9651](https://www.rfc-editor.org/rfc/rfc9651.html).
It aims to give MoonBit HTTP clients, servers, proxies, and WebAssembly
applications a small, dependency-free parser and serializer for standards-based
HTTP field values.

## Project status

The project is at proposal-stage development. Its public data model and the
first strict parser path for Boolean Items are present. The remaining RFC 9651
types, containers, canonical serialization, conformance tests, CI, and package
publication are planned in the public roadmap.

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
match @sfv.parse_item("?1") {
  Ok(item) => println(item)
  Err(error) => println(error)
}
```

The proposal-stage implementation currently accepts `?1` and `?0` Boolean
Items. The `parse_item` entry point will remain stable as additional bare item
types and parameters are implemented.

## Development

Once the MoonBit toolchain is installed, the standard checks will be:

```text
moon check
moon test
moon fmt --check
```

No successful local or CI run is claimed yet; the initial repository was
created before the development toolchain was installed on the first workstation.

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

