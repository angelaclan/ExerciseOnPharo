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
Bus >> addPassenger: anEmployee [

	(self canTake: anEmployee)
		ifFalse: [ IDontWantToGoToWorkError signal: 'Attention! Get off the bus!!!' ]. 

	self hasSeats 
		ifTrue: [ seats add: anEmployee.
			numberOfSeats := numberOfSeats - 1 ]
		ifFalse: [ standups add: anEmployee ]

]

{ #category : #accessing }
Bus >> bigEnough [
	^ bigEnough
]

{ #category : #accessing }
Bus >> bigEnough: anObject [
	bigEnough := anObject
]

{ #category : #action }
Bus >> canTake: anEmployee [
	^ self isNotFull and: [ anEmployee shouldGetOn: self ]

]

{ #category : #action }
Bus >> hasPlacesFor: anEmployee [
	^ numberOfSeats - seatsTaken > anEmployee acceptNumberOfSeats
		or:
			[ numberOfStandups - standupsTaken > anEmployee acceptNumberOfStandups ]
]

{ #category : #action }
Bus >> hasSeats [
	^ seats size < numberOfSeats
]

{ #category : #initialize }
Bus >> initialize [
	super initialize.
	seats := OrderedCollection new.
	standups := OrderedCollection new
]

{ #category : #status }
Bus >> isEmpty [
	^ seats size = 0 and: [ standups size = 0 ]
]

{ #category : #status }
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

{ #category : #removing }
Bus >> removePassenger: anEmployee [
	self isEmpty
		ifTrue: [ self error: 'Let him go on the bus!' ].
	^ standups
		remove: anEmployee
		ifAbsent: [ seats remove: anEmployee.
			numberOfSeats := numberOfSeats + 1 ]
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

{ #category : #adding }
Bus >> theFirstPassenger [
	seats isEmpty 
		ifFalse: [ ^ seats at: 1 ]
		ifTrue:[ ^ nil ]
]
