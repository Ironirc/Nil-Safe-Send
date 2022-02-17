reflective operations
basicIdentityHash
	"Answer a 22 bits unsigned SmallInteger whose value is related to the receiver's identity.
	
	Primitive. Fails if the receiver is an immediate. Essential.
	See Object documentation whatIsAPrimitive.
	
	Do not override, use #identityHash instead"

	<primitive: 75>
	self primitiveFailed