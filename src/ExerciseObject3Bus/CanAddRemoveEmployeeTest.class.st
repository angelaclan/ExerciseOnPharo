Class {
	#name : #CanAddRemoveEmployeeTest,
	#superclass : #TestCase,
	#category : #ExerciseObject3Bus
}

{ #category : #tests }
CanAddRemoveEmployeeTest >> testBusAHasNoEmployee [
	| busA |
	busA := Bus new.
	busA
		numberOfSeats: 10;
		numberOfStandups: 20.
	self assert: busA theFirstPassenger equals: nil
]

{ #category : #tests }
CanAddRemoveEmployeeTest >> testBusAddOneEmployee [
	| busA lazy1|
	lazy1 := Lazy new.
	busA := Bus new.
	busA
		numberOfSeats: 10;
		numberOfStandups: 20;
		addPassenger: lazy1.
	self assert: busA theFirstPassenger equals: lazy1.
	self assert: busA seats size equals: 1 
]

{ #category : #tests }
CanAddRemoveEmployeeTest >> testBusBAddThreeEmployee [
	| busA hurry1 hurry2 hurry3 |
	hurry1 := Hurry new.
	hurry2 := Hurry new.
	hurry3 := Hurry new.
	busA := Bus new.
	busA
		numberOfSeats: 10;
		numberOfStandups: 20;
		addPassenger: hurry2;
		addPassenger: hurry3;
		addPassenger: hurry1;
		yourself.
	self assert: busA theFirstPassenger equals: hurry2.
	self assert: busA seats size equals: 3.
	self assert: busA numberOfSeats equals: 7
]

{ #category : #tests }
CanAddRemoveEmployeeTest >> testBusIsEmpty [
	| busA |
	busA := Bus new.
	busA
		numberOfSeats: 10;
		numberOfStandups: 20.
	self assert: busA isEmpty equals: true
]

{ #category : #tests }
CanAddRemoveEmployeeTest >> testBusRemoveOneEmployee [
	| busA hurry1 hurry2 hurry3 |
	hurry1 := Hurry new.
	hurry2 := Hurry new.
	hurry3 := Hurry new.
	busA := Bus new.
	busA
		numberOfSeats: 10;
		numberOfStandups: 20;
		addPassenger: hurry2;
		addPassenger: hurry3;
		addPassenger: hurry1;
		removePassenger: hurry1.
	self assert: busA seats size equals: 2.
	self assert: busA theFirstPassenger equals: hurry2.
	self assert: busA numberOfSeats equals: 8
]
