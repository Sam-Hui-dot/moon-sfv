///|
/// A bare item value defined by RFC 9651.
///
/// The initial implementation parses Boolean items. The remaining variants
/// establish the public data model for the complete parser and serializer.
pub(all) enum BareItem {
  SfInteger(Int64)
  SfDecimal(Double)
  SfString(String)
  SfToken(String)
  SfByteSequence(Bytes)
  SfBoolean(Bool)
  SfDate(Int64)
  SfDisplayString(String)
} derive(Show)

///|
/// An ordered parameter attached to an Item or Inner List.
pub(all) struct Parameter {
  key : String
  value : BareItem
} derive(Show)

///|
/// A parameterized RFC 9651 Item.
pub(all) struct Item {
  value : BareItem
  parameters : Array[Parameter]
} derive(Show)

///|
/// Errors returned by the strict Structured Fields parser.
pub(all) enum ParseError {
  EmptyInput
  UnsupportedBareItem(String)
  InvalidBoolean(String)
} derive(Show)

///|
/// Parse a Boolean bare item (`?1` or `?0`) as an RFC 9651 Item.
pub fn parse_boolean_item(input : String) -> Result[Item, ParseError] {
  match input {
    "?1" => Ok({ value: SfBoolean(true), parameters: [] })
    "?0" => Ok({ value: SfBoolean(false), parameters: [] })
    _ => Err(InvalidBoolean(input))
  }
}

///|
/// Parse a top-level RFC 9651 Item.
///
/// Boolean values are supported in the proposal-stage implementation. Other
/// bare item types will be added without changing this entry point.
pub fn parse_item(input : String) -> Result[Item, ParseError] {
  match input {
    "" => Err(EmptyInput)
    "?1" | "?0" => parse_boolean_item(input)
    _ => Err(UnsupportedBareItem(input))
  }
}

