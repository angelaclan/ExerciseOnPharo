Class {
	#name : #CanTakeEmployeeTest,
	#superclass : #TestCase,
	#category : #ExerciseObject3Bus
}

{ #category : #tests }
CanTakeEmployeeTest >> testBusAcanTakeHurry1 [
	| busA hurry1 |
	busA := Bus new.
	busA seats = 20.
	busA standups = 30.
	hurry1 := Hurry new.
	self assert: (busA canTake: hurry1) equals: true
]
