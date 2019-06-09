"
I am an OrderPreservingDictionary that returns '' (an empty string) as a default value. In CTOrderPreservingDictionary you can set your own default value, I always return an empty string as  a default value.

	| dict |
	dict := CTOrderPreservingStringDictionary new. 
	dict at: #missing
	>>> ''

I can use any data types, not just Strings as my keys and values: 

	| strDict |
 	strDict  := CTOrderPreservingStringDictionary new. 
 	strDict at: 1 put: 10.
 	strDict at: 2 put: 20.
 	strDict  >>> 'a CTOrderPreservingStringDictionary(1->10 2->20)'
"
Class {
	#name : #CTOrderPreservingStringDictionary,
	#superclass : #CTStandardOrderedDictionary,
	#category : #'Containers-OrderPreservingDictionary'
}

{ #category : #accessing }
CTOrderPreservingStringDictionary >> associationAt: aKey [
	^ self
		associationAt: aKey
		ifAbsent: [nil]
]

{ #category : #accessing }
CTOrderPreservingStringDictionary >> at: aKey [
	^ self
		at: aKey
		ifAbsent: ['']
]

{ #category : #accessing }
CTOrderPreservingStringDictionary >> keyAtIdentityValue: aValue [
	^ self
		keyAtIdentityValue: aValue
		ifAbsent: ['']
]

{ #category : #accessing }
CTOrderPreservingStringDictionary >> keyAtIndex: anIndex [
	^ self
		keyAtIndex: anIndex
		ifAbsent: ['']
]

{ #category : #accessing }
CTOrderPreservingStringDictionary >> keyAtValue: aValue [
	^ self
		keyAtValue: aValue
		ifAbsent: ['']
]

{ #category : #removing }
CTOrderPreservingStringDictionary >> removeKey: aKey [
	^ self
		removeKey: aKey
		ifAbsent: ['']
]
