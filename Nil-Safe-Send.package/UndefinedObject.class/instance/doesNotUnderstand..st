reflective operations
doesNotUnderstand: aMessage

	"Handle the fact that there was an attempt to send the given message to an Undeclared variable (nil), hence the receiver does not understand this message (typically #new)."

	"Testing: (nil activeProcess)"

	<debuggerCompleteToSender>
	| exception resumeValue node |
	[ 
	node := self findUndeclaredVariableIn:
		        thisContext outerContext sender sourceNodeExecuted ] onErrorDo: [ :ex | 
				"This is ugly, but we have a dependency with Opal compiler and 
				it should be extracted. If there is a failure during the bootstrap, this
				dependency produces an infinite loop"
		 ].
	node ifNil: [ ^ super doesNotUnderstand: aMessage ].

	(exception := VariableNotDeclared new)
		message: aMessage;
		variableNode: node;
		receiver: self.

	resumeValue := exception signal.
	^ exception reachedDefaultHandler
		  ifTrue: [ aMessage sentTo: self ]
		  ifFalse: [ resumeValue ]