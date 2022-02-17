block support
mustBeBooleanIn: context
	"context is the where the non-boolean error occurred. Rewind context to before jump then raise error."
	
	"Some constructs are optimized in the compiler :
	#whileTrue:
	#whileFalse:
	#ifTrue:
	#ifFalse:
	#ifTrue:ifFalse:
	#ifFalse:ifTrue:
	So you cannot by default use them on non boolean objects."
	
	"If you really need to use optimized constructs, you can enable Opal compiler and do one of the following :
		- recompile your method with the pragma : <compilerOptions: #(+ optIlineNone)>
		- recompile your class with the method : MyClass class>>compiler 
			^ super compiler options: #(+ optIlineNone)
		- enable the option mustBeBooleanDeOptimize to call mustBeBooleanDeOptimizeIn: instead of this method "

	| proceedValue |
	
	"Set the pc back to the point just before the conditional jump that set off the must be boolean"
	context pc: context instructionStream previousPc.
	proceedValue := NonBooleanReceiver new
		object: self;
		signal: 'proceed for truth.'.
	^ proceedValue ~~ false