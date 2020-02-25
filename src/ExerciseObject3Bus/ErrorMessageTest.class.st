Class {
	#name : #ErrorMessageTest,
	#superclass : #TestCase,
	#category : #ExerciseObject3Bus
}

{ #category : #tests }
ErrorMessageTest >> testClosephobicGetOnBusErrorMessage [
	| busA closephobic1 |
	closephobic1 := Closephobic new.
	busA := Bus new.
	busA
		bigEnough: false;
		numberOfSeats: 0;
		numberOfStandups: 20.
	self should: [ busA addPassenger: closephobic1 ] raise: IDontWantToGoToWorkError
]

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

{ #category : #tests }
ErrorMessageTest >> testModerateGetOnBusErrorMessage [
	| busA moderate1 |
	moderate1 := Moderate new.
	moderate1
		acceptNumberOfSeats: 3;
		acceptNumberOfStandups: 5.
	busA := Bus new.
	busA
		numberOfSeats: 10;
		numberOfStandups: 20;
		seatsTaken: 10;
		standupsTaken: 20.
	self should: [ busA addPassenger: moderate1 ] raise: IDontWantToGoToWorkError
]

{ #category : #tests }
ErrorMessageTest >> testObsequoisGetOnBusErrorMessage [
	| busA obsequois1 |
	obsequois1 := Obsequios new.
	obsequois1 boss: Lazy new.
	busA := Bus new.
	busA
		numberOfSeats: 0;
		numberOfStandups: 20.
	self should: [ busA addPassenger: obsequois1 ] raise: IDontWantToGoToWorkError
]
