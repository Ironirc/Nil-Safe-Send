reflective operations
findUndeclaredVariableIn: ast
	"Walk the ast of the current statment and find the undeclared variable node, or nil (if none).
	Assumes there is only one such variable in an executing statement"
	
	^ast variableNodes detect: [:node | node isUndeclaredVariable] ifNone: [ nil ]