testing
ifNil: aBlock
	"A convenient test, in conjunction with Object ifNil:"
	"Might be compiled inline for speed, see RBMessageNode>>#isInlineIfNil"
	^ aBlock value