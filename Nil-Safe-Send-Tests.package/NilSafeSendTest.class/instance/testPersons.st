tests
testPersons

	self assert: NssPerson wimDeWit _ firstName equals: 'Wim'.
	self assert: NssPerson wimDeWit _ lastName equals: 'De Wit'.
	self
		assert:
		NssPerson wimDeWit _ mother _ address _ city _ country _ name
		equals: 'France'.
	self
		assert: NssPerson janeDoe _ mother _ address _ city _ country _ name
		equals: nil