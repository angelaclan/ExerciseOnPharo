Class {
	#name : #Personal,
	#superclass : #Object,
	#instVars : [
		'phone'
	],
	#category : #ExerciseObject2Phone
}

{ #category : #'as yet unclassified' }
Personal >> fareRate: aPhone [
	aPhone minutes <= 10
		ifTrue: [ ^ aPhone minutes * 0.70 ].
	aPhone minutes > 10
		ifTrue: [ ^ 10 * 0.70 + ((aPhone minutes - 10) * 0.40) ]
]

{ #category : #accessing }
Personal >> phone [
	^ phone
]

{ #category : #accessing }
Personal >> phone: anObject [
	phone := anObject
]
