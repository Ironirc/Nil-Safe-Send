write barrier
modificationForbiddenFor: selector index: index value: value
	^ (ModificationForbidden 
		for: self
		at: index
		with: value
		retrySelector: selector) signal