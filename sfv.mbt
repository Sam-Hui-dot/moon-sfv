///|
/// A bare item value defined by RFC 9651.
pub(all) enum BareItem {
  SfInteger(Int64)
  SfDecimal(Double)
  SfString(String)
  SfToken(String)
  SfByteSequence(Bytes)
  SfBoolean(Bool)
  SfDate(Int64)
  SfDisplayString(String)
} derive(Debug, Eq)

///|
/// An ordered parameter attached to an Item or Inner List.
pub(all) struct Parameter {
  key : String
  value : BareItem
} derive(Debug, Eq)

///|
/// A parameterized RFC 9651 Item.
pub(all) struct Item {
  value : BareItem
  parameters : Array[Parameter]
} derive(Debug, Eq)

///|
/// An RFC 9651 Inner List containing zero or more Items with ordered parameters.
pub(all) struct InnerList {
  items : Array[Item]
  parameters : Array[Parameter]
} derive(Debug, Eq)

///|
/// A member of a top-level List or Dictionary value: either an Item or an Inner List.
pub(all) enum ListMember {
  Item(Item)
  InnerList(InnerList)
} derive(Debug, Eq)

///|
/// A key-value pair in an RFC 9651 Dictionary.
pub(all) struct DictionaryMember {
  key : String
  value : ListMember
} derive(Debug, Eq)

///|
/// Errors returned by the strict Structured Fields parser.
pub(all) enum ParseError {
  EmptyInput
  InvalidBoolean(Int)
  InvalidInteger(String)
  IntegerOutOfRange(String)
  InvalidDecimal(String)
  DecimalOutOfRange(String)
  UnterminatedString(Int)
  InvalidStringEscape(Int)
  InvalidStringCharacter(Int)
  InvalidToken(Int)
  InvalidByteSequence(Int)
  InvalidDate(String)
  InvalidDisplayString(Int)
  InvalidParameterKey(Int)
  InvalidDictionaryKey(Int)
  InvalidInnerList(Int)
  InvalidList(Int)
  InvalidDictionary(Int)
  UnsupportedBareItem(Int)
  TrailingCharacters(Int)
} derive(Debug, Eq)

///|
/// Errors returned when a value cannot be serialized as RFC 9651.
pub(all) enum SerializeError {
  IntegerOutOfRange(Int64)
  DecimalOutOfRange(Double)
  InvalidDecimal(Double)
  DateOutOfRange(Int64)
  InvalidString(String)
  InvalidToken(String)
  InvalidByteSequence
  InvalidDisplayString(String)
  InvalidParameterKey(String)
  InvalidDictionaryKey(String)
  UnsupportedBareItem
} derive(Debug, Eq)
