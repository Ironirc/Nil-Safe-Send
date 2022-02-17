testing
ifNil: nilBlock ifNotNil: ifNotNilBlock
	"If the receiver is not nil, pass it as argument to the ifNotNilBlock block. else execute the nilBlock block"
	"Might be compiled inline for speed, see RBMessageNode>>#isInlineIfNil"

	"(nil ifNil: [42] ifNotNil: [:o | o +3 ] ) >>> 42"
	"(3  ifNil: [42] ifNotNil: [:o | o +3 ]) >>> 6"

	^ nilBlock value