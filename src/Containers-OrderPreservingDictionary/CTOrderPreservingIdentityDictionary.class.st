"
I'm a dictionary that uses identity comparison (==) on my keys instead of equality.
That means I consider two keys to be equal only if they are the same object.

I'm an OrderPreservingDictionary which means I'm returning default value instead of raising an error. See CTOrderPreservingDictionary comment for an example.

Example:

| firstObject secondObject dict |
   firstObject  := Object new.
	dict := CTOrderPreservingIdentityDictionary new.
   dict at: firstObject put: 1.
	dict at: firstObject put: 3.  ""this will override the value at firstObject key (keys are same Object)""
	secondObject := Object new.  ""if we want to add new value we need to create new Object key""
	dict at: secondObject put: 4.
	dict >>> ' a CTOrderPreservingIdentityDictionary(an Object->3 an Object->4)->'
"
Class {
	#name : #CTOrderPreservingIdentityDictionary,
	#superclass : #CTOrderPreservingDictionary,
	#category : #'Containers-OrderPreservingDictionary'
}

{ #category : #accessing }
CTOrderPreservingIdentityDictionary >> dictionaryClass [
	^ IdentityDictionary
]

{ #category : #accessing }
CTOrderPreservingIdentityDictionary >> indexOfKey: aKey ifAbsent: aBlock [
	^ self
		identityIndexOfKey: aKey
		ifAbsent: aBlock
]

{ #category : #testing }
CTOrderPreservingIdentityDictionary >> isIdentityDictionary [
	^ true
]

{ #category : #private }
CTOrderPreservingIdentityDictionary >> orderedKeysIndexOf: aKey [
	^ self orderedKeysIdentityIndexOf: aKey
]
