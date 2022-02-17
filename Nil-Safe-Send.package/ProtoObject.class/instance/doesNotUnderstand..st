reflective operations
doesNotUnderstand: aMessage

	<debuggerCompleteToSender>

	^ MessageNotUnderstood new 
		message: aMessage;
		receiver: self;
		signal