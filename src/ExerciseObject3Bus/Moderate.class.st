Class {
	#name : #Moderate,
	#superclass : #Object,
	#instVars : [
		'acceptNumberOfSeats',
		'acceptNumberOfStandups'
	],
	#category : #ExerciseObject3Bus
}

{ #category : #accessing }
Moderate >> acceptNumberOfSeats [
	^ acceptNumberOfSeats
]

{ #category : #accessing }
Moderate >> acceptNumberOfSeats: anObject [
	acceptNumberOfSeats := anObject
]

{ #category : #accessing }
Moderate >> acceptNumberOfStandups [
	^ acceptNumberOfStandups
]

{ #category : #accessing }
Moderate >> acceptNumberOfStandups: anObject [
	acceptNumberOfStandups := anObject
]

{ #category : #testing }
Moderate >> shouldGetOn: aBus [
	^ aBus hasSomePlaces: self
]
