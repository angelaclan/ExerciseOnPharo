Class {
	#name : #ResultPercentageBonus,
	#superclass : #Object,
	#instVars : [
		'employee'
	],
	#category : #ExerciseObject1Salary
}

{ #category : #accessing }
ResultPercentageBonus >> amount [
	^ employee netSalary * 0.10
]

{ #category : #accessing }
ResultPercentageBonus >> employee [
	^ employee
]

{ #category : #accessing }
ResultPercentageBonus >> employee: anObject [
	employee := anObject 
]
