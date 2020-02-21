Class {
	#name : #Motorola,
	#superclass : #Object,
	#instVars : [
		'calls',
		'minutes'
	],
	#category : #ExerciseObject2Phone
}

{ #category : #'as yet unclassified' }
Motorola >> battery [
	 self = 0
		ifTrue: [ ^ 'phone is dead' ]
		ifFalse: [ ^ 5 - (calls * 0.25) ]
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

{ #category : #accessing }
Motorola >> minutes [
	^ minutes
]

{ #category : #accessing }
Motorola >> minutes: anObject [
	minutes := anObject
]
