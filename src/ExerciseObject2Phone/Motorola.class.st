Class {
	#name : #Motorola,
	#superclass : #Object,
	#instVars : [
		'calls'
	],
	#category : #ExerciseObject2Phone
}

{ #category : #'as yet unclassified' }
Motorola >> battery [
	^ 5 - (calls * 0.25)
]

{ #category : #'as yet unclassified' }
Motorola >> brand [
	^ 'Motorola'
]

{ #category : #accessing }
Motorola >> calls [
	^ calls
]

{ #category : #accessing }
Motorola >> calls: anObject [
	calls := anObject
]
