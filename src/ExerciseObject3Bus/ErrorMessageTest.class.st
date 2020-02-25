Class {
	#name : #ErrorMessageTest,
	#superclass : #TestCase,
	#category : #ExerciseObject3Bus
}

{ #category : #tests }
ErrorMessageTest >> testHurryGetOnBusErrorMessage [
	| busA lazy1 |
	lazy1 := Lazy new.
	busA := Bus new.
	busA
		numberOfSeats: 0;
		numberOfStandups: 0.
	self should:[(busA addPassenger: lazy1)] raise: IDontWantToGoToWorkError.

]

{ #category : #tests }
ErrorMessageTest >> testLazyGetOnBusErrorMessage [
	| busA lazy1 |
	lazy1 := Lazy new.
	busA := Bus new.
	busA
		numberOfSeats: 0;
		numberOfStandups: 20.
	self should:[(busA addPassenger: lazy1)] raise: IDontWantToGoToWorkError.

]
