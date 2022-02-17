sets support
asCollectionElement
	"Since nil is a singleton, we need only a single wrapper instance to represent it in set,
	created in advance"
	^ CollectionElement withNil