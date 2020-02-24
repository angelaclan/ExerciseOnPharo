Class {
	#name : #Lazy,
	#superclass : #Object,
	#category : #ExerciseObject3Bus
}

{ #category : #testing }
Lazy >> shouldGetOn: aBus [
	^ aBus hasSeats
]
