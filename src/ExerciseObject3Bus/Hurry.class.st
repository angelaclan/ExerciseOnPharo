Class {
	#name : #Hurry,
	#superclass : #Object,
	#category : #ExerciseObject3Bus
}

{ #category : #testing }
Hurry >> shouldGetOn: aBus [
	^ aBus isNotFull
]
