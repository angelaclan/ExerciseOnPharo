Class {
	#name : #MovieStar,
	#superclass : #Object,
	#instVars : [
		'phone'
	],
	#category : #ExerciseObject2Phone
}

{ #category : #'as yet unclassified' }
MovieStar >> fareRate: aPhone [
	^ aPhone minutes * 0.60

]

{ #category : #accessing }
MovieStar >> phone [
	^ phone
]

{ #category : #accessing }
MovieStar >> phone: anObject [
	phone := anObject
]
