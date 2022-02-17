write barrier
modificationForbiddenFor: selector value: value
	^ self modificationForbiddenFor: selector index: nil value: value