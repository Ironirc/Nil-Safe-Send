nil-safe-send
_

	"I am nil, return the 'message swallower'. Almost all messages sent to this object will return nil (using doesNotUnderstand:)"
	"Also see: ProtoObject>>#_"
	"This method is usefull to chain messages in an expression, without requiring explicit checks for nil before each send"
	"e.g.   	aCustomer _ address _ city _ name"
	"Take a look at NilSafeSendTest to find some more examples"

	^ MessageSwallower soleInstance