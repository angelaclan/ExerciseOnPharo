Class {
	#name : #CanTakeEmployeeTest,
	#superclass : #TestCase,
	#category : #ExerciseObject3Bus
}

{ #category : #tests }
CanTakeEmployeeTest >> testBusAcanTakeClosePhobic1 [
	| busA closephobic1 |
	busA := Bus new.
	busA
		numberOfSeats: 10;
		numberOfStandups: 20;
		isBigEnough.
	closephobic1 := Closephobic new.
	self assert: (busA canTake: closephobic1) equals: true
]

{ #category : #tests }
CanTakeEmployeeTest >> testBusAcanTakeHurry1 [
	| busB hurry1 |
	busB := Bus new.
	busB
		numberOfSeats: 10;
		numberOfStandups: 20.
	hurry1 := Hurry new.
	self assert: (busB canTake: hurry1) equals: true
]

{ #category : #tests }
CanTakeEmployeeTest >> testBusBOnlyStandupsCanTakeHurry1 [
	| busB hurry1 |
	busB := Bus new.
	busB
		numberOfSeats: 0;
		numberOfStandups: 20.
	hurry1 := Hurry new.
	self assert: (busB canTake: hurry1) equals: true
]

{ #category : #tests }
CanTakeEmployeeTest >> testBusBcanTakeHurry1 [
	| busB hurry1 |
	busB := Bus new.
	busB
		numberOfSeats: 0;
		numberOfStandups: 0.
	hurry1 := Hurry new.
	self assert: (busB canTake: hurry1) equals: false
]
