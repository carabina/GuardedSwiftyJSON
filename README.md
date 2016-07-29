# GuardedSwiftyJSON

## Why should I use this?

This library makes initializing models with JSON data with SwiftyJSON a lot easier.

Often with SwiftyJSON I end up doing something like this:

```swift
import SwiftyJSON

struct Model {
  let name : String
  let height : Double

  init?(json: JSON) {
    guard let name = json["name"].string, let height = json["height"].double else {
      return nil
    }

    self.name = name
    self.height = height
  }
}
```

which gets annoying when you have more than two or three properties you want to guard your model on.

## Example

GuardedSwiftyJSON solves this by providing an initializer which will fail the initialization if properties that you request are not present.

```swift
import GuardedSwiftyJSON

struct Model : JsonInitializable {
  let name : String
  let height : Double

  init(json: JsonProxy) {
    name = json["name"].string
    height = json["height"].double
  }
}
```

And then your object will get an initializer that allows it to be created from a Swifty JSON object:

```swift
let data : JSON = ["name": "Arthur Swiftington", "height": 182.8]

let model : Model? = Model(json: data)
```

If either one of name or height are not present, the initialization will fail.

You can specify optional properties by using the optional prefix:
```swift
import GuardedSwiftyJSON

struct Model : JsonInitializable {
  let name : String
  let height : Double?

  init(json: JsonProxy) {
    name = json["name"].string
    height = json["height"].optionalDouble
  }
}
```

## Installation

Carthage:

    github "wiggzz/GuardedSwiftyJSON"

Cocoapods not yet supported.

## Contributing

Pull requests and issues are welcomed.
