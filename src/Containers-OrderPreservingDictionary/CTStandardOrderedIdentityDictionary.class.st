"
StandardOrdered means that If I try to access key that doesn't exist an error is raised. See CTStandardOrderedDictionary comment for an example.

Identity means that I use identity comparison (==) on my keys instead of equality.I consider two keys to be equal only if they are the same object. See CTOrderPreservingIdentityDictionary comment for an example.






"
Class {
	#name : #CTStandardOrderedIdentityDictionary,
	#superclass : #CTStandardOrderedDictionary,
	#category : #'Containers-OrderPreservingDictionary'
}

{ #category : #accessing }
CTStandardOrderedIdentityDictionary >> dictionaryClass [
	^ IdentityDictionary
]

{ #category : #accessing }
CTStandardOrderedIdentityDictionary >> indexOfKey: aKey ifAbsent: aBlock [
	^ self
		identityIndexOfKey: aKey
		ifAbsent: aBlock
]

{ #category : #testing }
CTStandardOrderedIdentityDictionary >> isIdentityDictionary [
	^ true
]

{ #category : #private }
CTStandardOrderedIdentityDictionary >> orderedKeysIndexOf: aKey [
	^ self orderedKeysIdentityIndexOf: aKey
]
