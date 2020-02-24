Class {
	#name : #Bus,
	#superclass : #Object,
	#instVars : [
		'seats',
		'standups',
		'numberOfSeats',
		'numberOfStandups',
		'hasBoss',
		'bigEnough',
		'seatsTaken',
		'standupsTaken'
	],
	#category : #ExerciseObject3Bus
}

{ #category : #adding }
Bus >> addPassanger: anEmployee [

	self thereIsAFreePlace ifTrue:[ seats ]
]

{ #category : #accessing }
Bus >> bigEnough [
	^ bigEnough
]

{ #category : #accessing }
Bus >> bigEnough: anObject [
	bigEnough := anObject
]

{ #category : #testing }
Bus >> canTake: anEmployee [
	^ self isNotFull and: [ anEmployee shouldGetOn: self ] 

]

{ #category : #accessing }
Bus >> hasBoss [
	^ hasBoss
]

{ #category : #accessing }
Bus >> hasBoss: anObject [
	hasBoss := anObject
]

{ #category : #testing }
Bus >> hasSeats [
	^ seats size < numberOfSeats
]

{ #category : #testing }
Bus >> hasSomePlaces: anEmployee [
	seats size - seatsTaken > anEmployee acceptNumberOfSeats
		or:
			[ standups size - standupsTaken > anEmployee acceptNumberOfStandups ]
]

{ #category : #initialize }
Bus >> initialize [
	super initialize.
	seats := OrderedCollection new.
	standups := OrderedCollection new
]

{ #category : #'as yet unclassified' }
Bus >> isNotFull [
	^ (seats size < numberOfSeats) or: [standups size < numberOfStandups ]
]

{ #category : #accessing }
Bus >> numberOfSeats [
	^ numberOfSeats
]

{ #category : #accessing }
Bus >> numberOfSeats: anObject [
	numberOfSeats := anObject
]

{ #category : #accessing }
Bus >> numberOfStandups [
	^ numberOfStandups
]

{ #category : #accessing }
Bus >> numberOfStandups: anObject [
	numberOfStandups := anObject
]

{ #category : #accessing }
Bus >> seats [
	^ seats
]

{ #category : #accessing }
Bus >> seats: anObject [
	seats := anObject
]

{ #category : #accessing }
Bus >> seatsTaken [
	^ seatsTaken
]

{ #category : #accessing }
Bus >> seatsTaken: anObject [
	seatsTaken := anObject
]

{ #category : #accessing }
Bus >> standups [
	^ standups
]

{ #category : #accessing }
Bus >> standups: anObject [
	standups := anObject
]

{ #category : #accessing }
Bus >> standupsTaken [
	^ standupsTaken
]

{ #category : #accessing }
Bus >> standupsTaken: anObject [
	standupsTaken := anObject
]
