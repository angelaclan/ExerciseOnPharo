Class {
	#name : #Claro,
	#superclass : #Object,
	#instVars : [
		'phone'
	],
	#category : #ExerciseObject2Phone
}

{ #category : #'as yet unclassified' }
Claro >> fareRate: aPhone [
	^ aPhone * 0.50 + (aPhone * 0.50 * 0.21)
]

{ #category : #accessing }
Claro >> phone [
	^ phone
]

{ #category : #accessing }
Claro >> phone: anObject [
	phone := anObject
]
