Class {
	#name : #CanAddEmployeeTest,
	#superclass : #TestCase,
	#category : #ExerciseObject3Bus
}

{ #category : #tests }
CanAddEmployeeTest >> testBusIsEmpty [
	| busA |
	busA := Bus new.
	busA
		numberOfSeats: 10;
		numberOfStandups: 20.
	self assert: busA isEmpty equals: true
]
