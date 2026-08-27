# Roadmap

## Milestone 1: Bare Items and Item Support (v0.1.0)

- [x] Public bare-item and Item data model
- [x] Strict Boolean Item parsing and serialization
- [x] Integer parsing and serialization with RFC range checks (`±999,999,999,999,999`)
- [x] Decimal parsing and canonical serialization with round-half-even ties (`±999,999,999,999.999`)
- [x] String parsing and serialization with strict escaping
- [x] Token parsing and serialization
- [x] Byte Sequence Base64 decoding and encoding (`:...:`)
- [x] Date parsing and serialization (`@...`)
- [x] Display String percent-encoded UTF-8 parsing and serialization (`%"..."`)
- [x] Ordered parameters with Boolean shorthand (`item;key` / `item;key=value`)

## Milestone 2: Container Structures (v0.1.0)

- [x] Inner Lists (`(item1 item2);param=1`)
- [x] Top-level Lists (`parse_list` / `serialize_list`)
- [x] Top-level Dictionaries (`parse_dictionary` / `serialize_dictionary`)
- [x] Dictionary member Boolean shorthand (`key` / `key;param=1`)
- [x] Duplicate key overwrite semantics (last key wins)
- [x] Multiple field-line combining semantics

## Milestone 3: Testing and Standards Conformance (v0.1.0)

- [x] HTTPWG structured-field-tests suite integration (2,135 official test vectors)
- [x] 100% test pass rate across all vectors and local unit tests (2,181 total tests)
- [x] Canonical serialization validation
- [x] Strict malformed input rejection
- [x] Runnable examples in `examples/main`
- [x] GitHub Actions CI automation

## Future Enhancements (Post-v0.1.0)

- [ ] Performance profiling, benchmarks, and optimization for hot HTTP parsing paths
- [ ] Fuzz testing and automated property-based test harness
- [ ] Ergonomic builder API and typed dictionary access helpers
- [ ] Direct integration helpers for MoonBit HTTP server and client frameworks
