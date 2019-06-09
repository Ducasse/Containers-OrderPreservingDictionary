"
I am an OrderPreservingStringDictionary that returns '' (an empty string) as a default value instead of raising an error. I will always return '' (an empty string) as a default value.

Identity means I use identity comparison (==) on my keys instead of equality. See CTOrderPresesrvingIdentityDictionary for example on using (==) comaprison





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
