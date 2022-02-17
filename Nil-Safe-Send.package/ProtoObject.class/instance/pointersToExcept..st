pointing to
pointersToExcept: objectsToExclude
	"Find all objects in the system that hold a pointer to me, excluding those listed"
	| c pointers objectsToAlwaysExclude closure|
	Smalltalk garbageCollect.
	pointers := OrderedCollection new.
	closure := [ :e | (e pointsTo: self) ifTrue: [ pointers add: e ]  ].
	SystemNavigation default allObjectsDo: closure.

	objectsToAlwaysExclude := {
		thisContext.
		thisContext sender.
		thisContext sender sender.
		closure.
		objectsToExclude.
	}.
	c := thisContext.
	^(pointers removeAllSuchThat: [ :ea |
		(ea == thisContext sender) or: [ "warning: this expression is dependent on closure structure of this method"
			(objectsToAlwaysExclude identityIncludes: ea)
				or: [objectsToExclude identityIncludes: ea ]] ]) asArray