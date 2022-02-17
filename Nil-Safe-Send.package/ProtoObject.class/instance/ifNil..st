testing
ifNil: nilBlock
	"Return self, or evaluate the block if I'm == nil (q.v.)"
	"Might be compiled inline for speed, see RBMessageNode>>#isInlineIfNil"
	^ self