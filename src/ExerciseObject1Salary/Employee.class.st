Class {
	#name : #Employee,
	#superclass : #Object,
	#instVars : [
		'category',
		'absenceCategory',
		'resultCategory',
		'dayoff'
	],
	#category : #ExerciseObject1Salary
}

{ #category : #accessing }
Employee >> absenceCategory [
	^ absenceCategory
]

{ #category : #accessing }
Employee >> absenceCategory: anObject [
	absenceCategory := anObject
]

{ #category : #accessing }
Employee >> category [
	^ category
]

{ #category : #accessing }
Employee >> category: anObject [
	^ category := anObject
]

{ #category : #accessing }
Employee >> dayoff [
	^ dayoff
]

{ #category : #accessing }
Employee >> dayoff: anObject [
	dayoff := anObject
]

{ #category : #accessing }
Employee >> isManager [
	^ category = 'manager'
]

{ #category : #salary }
Employee >> monthlySalary [
	^ self netSalary + self presenceBonus + self resultBonus
]

{ #category : #salary }
Employee >> netSalary [
	self isManager
		ifTrue: [ ^ 1000 ]
		ifFalse: [ ^ 1500 ] 
]

{ #category : #salary }
Employee >> presenceBonus [
	^ absenceCategory amount: dayoff
]

{ #category : #salary }
Employee >> resultBonus [
	^ resultCategory amount
]

{ #category : #accessing }
Employee >> resultCategory [
	^ resultCategory
]

{ #category : #accessing }
Employee >> resultCategory: anObject [
	^ resultCategory := anObject
]
