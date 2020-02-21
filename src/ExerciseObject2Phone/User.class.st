Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'model',
		'minutes',
		'contract'
	],
	#category : #ExerciseObject2Phone
}

{ #category : #'as yet unclassified' }
User >> billAmount [
	^ contract fareRate
]

{ #category : #'as yet unclassified' }
User >> billAmount: aPhone [
	^ contract fareRate: aPhone
]

{ #category : #accessing }
User >> cellPhoneBrand [
	^ model brand
]

{ #category : #accessing }
User >> contract [
	^ contract
]

{ #category : #accessing }
User >> contract: anObject [
	contract := anObject
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
