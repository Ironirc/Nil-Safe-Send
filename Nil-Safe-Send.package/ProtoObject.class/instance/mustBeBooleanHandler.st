block support
mustBeBooleanHandler

	^ NonBooleanReceiver mustBeBooleanHandler ifNil: [ self ]