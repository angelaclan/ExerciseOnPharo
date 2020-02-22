Class {
	#name : #Hurry,
	#superclass : #Object,
	#category : #ExerciseObject3Bus
}

{ #category : #testing }
Hurry >> canGetOn: aBus [
	^ aBus thereIsAFreePlace
]
