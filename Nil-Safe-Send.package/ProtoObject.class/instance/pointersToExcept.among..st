pointing to
pointersToExcept: objectsToExclude among: aCollectionOfObjects
	"Find all objects in the system that hold a pointer to me, excluding those listed.
	This method is meant to be a faster solution if used several times on several objects rather than calling the GC multiples times.
	See pointersToExcept: for usage.
	"

	| pointers objectsToAlwaysExclude |
	pointers := OrderedCollection new.
	pointers := aCollectionOfObjects select: [ :e | e pointsTo: self ].
	objectsToAlwaysExclude := {thisContext.
	thisContext sender.
	thisContext sender sender.
	objectsToExclude}.
	^ (pointers
		removeAllSuchThat: [ :ea | 
			ea == thisContext sender
				or:
					[ "warning: this expression is dependent on closure structure of this method"
					(objectsToAlwaysExclude identityIncludes: ea)
						or: [ objectsToExclude identityIncludes: ea ] ] ]) asArray