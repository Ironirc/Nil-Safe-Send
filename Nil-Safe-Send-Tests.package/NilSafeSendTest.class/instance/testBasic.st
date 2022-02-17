tests
testBasic

	| myArray |
	myArray := { 2. nil }.
	self assert: myArray _ first _ squared _ * 12 equals: 48.
	self assert: myArray _ second _ squared _ * 12 equals: nil.
	self assert: (myArray _ second _ squared _ * 12) isNil equals: true.
	self should: [ myArray _ second _ squared * 12 ] raise: Error.
