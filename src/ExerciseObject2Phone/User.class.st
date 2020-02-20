Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'model',
		'minutes'
	],
	#category : #ExerciseObject2Phone
}

{ #category : #accessing }
User >> cellPhoneBrand [
	^ model brand
]

{ #category : #accessing }
User >> minutes [
	^ minutes
]

{ #category : #accessing }
User >> minutes: anObject [
	minutes := anObject
]

{ #category : #accessing }
User >> model [
	^ model
]

{ #category : #accessing }
User >> model: anObject [
	model := anObject
]
