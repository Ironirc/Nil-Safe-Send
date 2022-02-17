pointing to
pointersToAmong: aCollectionOfObjects
	"Meant to be used as: 
	Smalltalk garbageCollect.
	objs := SystemNavigation default allObjects.
	anyObject pointersToAmong: objs.
	otherObject pointersToAmong: objs.
	
	Avoid multiple calls to allObjects Primitive and multiple gcs.
	"

	^ self pointersToExcept: #() among: aCollectionOfObjects