"
I am an IdentityDictionary version that uses == instead of = for String key comparing. That means I consider two keys to be equal only if they are the same object. 

I also returns empty strings instead of raising errors when absent keys/values are accessed. See CTOrderPreservingStringDictionary comment for example.

Example:

| dict firstKey secondKey|

dict := CTOrderPreservingIdentityStringDictionary new. 
firstKey := 'First'.
dict at: firstKey put: 2.
dict at: firstKey put: 3.  ""new key-value won't be created, we will override the old value at firstKey""
secondKey := 'Second'.     ""if we want to add new value to dict we must use new String key ""
dict at: secondKey put: 3. 
dict >>> 'a CTOrderPreservingIdentityStringDictionary(''First''->3 ''Second''->3)'

"
Class {
	#name : #CTOrderPreservingIdentityStringDictionary,
	#superclass : #CTOrderPreservingStringDictionary,
	#category : #'Containers-OrderPreservingDictionary'
}

{ #category : #accessing }
CTOrderPreservingIdentityStringDictionary >> dictionaryClass [
	^ IdentityDictionary
]

{ #category : #accessing }
CTOrderPreservingIdentityStringDictionary >> indexOfKey: aKey ifAbsent: aBlock [
	^ self
		identityIndexOfKey: aKey
		ifAbsent: aBlock
]

{ #category : #testing }
CTOrderPreservingIdentityStringDictionary >> isIdentityDictionary [
	^ true
]

{ #category : #private }
CTOrderPreservingIdentityStringDictionary >> orderedKeysIndexOf: aKey [
	^ self orderedKeysIdentityIndexOf: aKey
]
