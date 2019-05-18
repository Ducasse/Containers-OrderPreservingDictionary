Extension { #name : #Object }

{ #category : #'*Containers-OrderPreservingDictionary' }
Object >> isOrderPreservingDictionary [
	"Defined here because not all collections inherit from Collection,
	so just defining it in Collection and StandardOrderedDictionary
	and using #isCollection with #isOrderPreservingDictionary in
	StandardOrderedDictionary>>#= would trigger a DNU."

	^ false
]