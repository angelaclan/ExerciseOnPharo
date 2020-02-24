Class {
	#name : #Bus,
	#superclass : #Object,
	#instVars : [
		'seats',
		'standups',
		'numberOfSeats',
		'numberOfStandups'
	],
	#category : #ExerciseObject3Bus
}

{ #category : #adding }
Bus >> addPassanger: anEmployee [

	self thereIsAFreePlace ifTrue:[ seats ]
]

{ #category : #testing }
Bus >> canTake: anEmployee [
	^ self isNotFull and: [ anEmployee shouldGetOn: self ] 

]

{ #category : #initialize }
Bus >> initialize [
	super initialize.
	seats := OrderedCollection new.
	standups := OrderedCollection new
]

{ #category : #testing }
Bus >> isBigEnough [
	^ true
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
Bus >> standups [
	^ standups
]

{ #category : #accessing }
Bus >> standups: anObject [
	standups := anObject
]
