nil-safe-send
_

	"I'm not nil, so just return 'self' to obtain 'no operation'. Also see: UndefinedObject>>#_"
	"This method is usefull to chain messages in an expression, without requiring explicit checks for nil before each send"
	"e.g.   	aCustomer _ address _ city _ name"
	"Take a look at NilSafeSendTest to find some more examples"

	^ self