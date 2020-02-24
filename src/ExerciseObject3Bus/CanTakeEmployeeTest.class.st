Class {
	#name : #CanTakeEmployeeTest,
	#superclass : #TestCase,
	#category : #ExerciseObject3Bus
}

{ #category : #tests }
CanTakeEmployeeTest >> testBusAcanNotTakeObsquios1 [
	| busA obesquios1 |
	busA := Bus new.
	busA
		numberOfSeats: 10;
		numberOfStandups: 20;
		hasBoss: false.
	obesquios1 := Obsequios new.
	self assert: (busA canTake: obesquios1) equals: false
]

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
CanTakeEmployeeTest >> testBusAcanTakeObsquios [
	| busA obesquios1 |
	busA := Bus new.
	busA
		numberOfSeats: 10;
		numberOfStandups: 20;
		hasBoss: true.
	obesquios1 := Obsequios new.
	self assert: (busA canTake: obesquios1) equals: true
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
CanTakeEmployeeTest >> testBusBcanNotTakeHurry1 [
	| busB hurry1 |
	busB := Bus new.
	busB
		numberOfSeats: 0;
		numberOfStandups: 0.
	hurry1 := Hurry new.
	self assert: (busB canTake: hurry1) equals: false
]

{ #category : #tests }
CanTakeEmployeeTest >> testBusBcanNotTakeLazy1 [
	| busB lazy1 |
	busB := Bus new.
	busB
		numberOfSeats: 0;
		numberOfStandups: 20.
	lazy1 := Lazy new.
	self assert: (busB canTake: lazy1) equals: false
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

{ #category : #tests }
CanTakeEmployeeTest >> testBusBcanTakeLazy1 [
	| busB lazy1 |
	busB := Bus new.
	busB
		numberOfSeats: 2;
		numberOfStandups: 20.
	lazy1 := Lazy new.
	self assert: (busB canTake: lazy1) equals: true
]
