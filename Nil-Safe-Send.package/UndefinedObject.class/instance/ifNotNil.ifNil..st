testing
ifNotNil: ifNotNilBlock ifNil: nilBlock 
	"If the receiver is not nil, pass it as argument to the ifNotNilBlock block. else execute the nilBlock block"
	"Might be compiled inline for speed, see RBMessageNode>>#isInlineIfNil"

	"(nil ifNotNil: [:o | o +3 ] ifNil: [42]) >>> 42"
	"(3 ifNotNil: [:o | o +3 ] ifNil: [42]) >>> 6"
	
	^ nilBlock value