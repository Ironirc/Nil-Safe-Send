testing
ifNotNil: ifNotNilBlock
	"Evaluate the block, unless I'm == nil (q.v.). If the receiver is not nil, pass it as argument to the block."
	"Might be compiled inline for speed, see RBMessageNode>>#isInlineIfNil"

	"(2 ifNotNil: [ :o | o + 3]) >>> 5"
	"(nil ifNotNil: [:o | o +3 ]) >>> nil"

	^ ifNotNilBlock cull: self