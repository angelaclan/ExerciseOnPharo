Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'model',
		'user'
	],
	#category : #ExerciseObject2Phone
}

{ #category : #accessing }
User >> cellPhone [
	^ model brand
]

{ #category : #accessing }
User >> model [
	^ model
]

{ #category : #accessing }
User >> model: anObject [
	model := anObject
]
