///|
fn main {
  // 1. Item Example: parse -> typed inspection -> serialize
  let item_str = "example;secure;level=2"
  println("=== 1. Item Example ===")
  println("Input: " + item_str)
  match @sfv.parse_item(item_str) {
    Ok(item) => {
      println("Parsed Item successfully.")
      println("Item parameters count: " + item.parameters.length().to_string())
      match @sfv.serialize_item(item) {
        Ok(serialized) => println("Canonical serialized: " + serialized)
        Err(_) => println("Serialization failed")
      }
    }
    Err(_) => println("Parsing item failed")
  }

  // 2. List Example: Item and Inner List with parameters
  let list_str = "text/html;q=1.0, (\"gzip\" \"br\");level=9"
  println("\n=== 2. List Example ===")
  println("Input: " + list_str)
  match @sfv.parse_list(list_str) {
    Ok(list) => {
      println("Parsed list member count: " + list.length().to_string())
      match @sfv.serialize_list(list) {
        Ok(serialized) => println("Canonical serialized: " + serialized)
        Err(_) => println("Serialization failed")
      }
    }
    Err(_) => println("Parsing list failed")
  }

  // 3. Dictionary Example: key-value pairs, boolean shorthand, inner list
  let dict_str = "en=\"Applepie\", da=:w4ZibGV0w6ZydGUK:, active, flags=(x y)"
  println("\n=== 3. Dictionary Example ===")
  println("Input: " + dict_str)
  match @sfv.parse_dictionary(dict_str) {
    Ok(dict) => {
      println("Parsed dictionary entry count: " + dict.length().to_string())
      match @sfv.serialize_dictionary(dict) {
        Ok(serialized) => println("Canonical serialized: " + serialized)
        Err(_) => println("Serialization failed")
      }
    }
    Err(_) => println("Parsing dictionary failed")
  }
}
