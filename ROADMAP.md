# Roadmap

## Milestone 1: Item data model and parsing

- [x] Public bare-item and Item data model
- [x] Strict Boolean Item parsing
- [x] Integer parsing with RFC range checks
- [ ] Decimal parsing with RFC range and precision checks
- [x] String and Token parsing
- [ ] Byte Sequence decoding
- [ ] Date and Display String parsing
- [x] Ordered parameters

## Milestone 2: Containers

- [ ] Inner Lists
- [ ] Top-level Lists
- [ ] Top-level Dictionaries
- [ ] Multiple field-line combination behavior

## Milestone 3: Serialization

- [x] Item serialization for Boolean, Integer, String, and Token values
- [ ] List serialization
- [ ] Dictionary serialization
- [ ] Canonical formatting and validation

## Milestone 4: Release quality

- [ ] Import and attribute HTTPWG conformance vectors
- [x] Add initial boundary and malformed-input tests
- [ ] Add runnable examples
- [x] Add GitHub Actions CI
- [ ] Complete API and usage documentation
- [ ] Publish the first Mooncakes release
