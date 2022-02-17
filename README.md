# Nil-Safe-Send
Inspired by the new Javascript language feature: "optional chaining"
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Optional_chaining

It works in a non obtrusive manner, only claiming "_" (underscore) as unique global method name.
It's open for discussion if this is acceptable or not.

## Examples
```Smalltalk
myArray := { 2. nil }.
myArray _ first _ squared _ * 12.   "=> prints 48"
myArray _ second _ squared _ * 12.   "=> prints nil"
myArray _ second _ squared * 12.   "=> raises an error"
myArray _ second _ squared isNil.  "=> prints true"
```

## Installation
To install this library you clone this repository and load BaselineOfPharoOracleCallInterface.
This can be done using the Iceberg UI tools and with the following script:

```Smalltalk
Metacello new
  baseline: 'NilSafeSend';
  repository: 'github://Ironirc/Nil-Safe-Send:main';
  load.
```

## How it works
Sending and underscore to a receiver, just returns the receiver, or in case of nil, returns a special intermediary object.
This intermediary object is the sole instance of MessageSwallower (subclass of UndefinedObject)
It's doesNotUnderstand returns nil.
This makes the effect very local and controllable
