Class {
	#name : #Iphone,
	#superclass : #Object,
	#instVars : [
		'minutes'
	],
	#category : #ExerciseObject2Phone
}

{ #category : #'as yet unclassified' }
Iphone >> battery [
	^ self = 0
		ifTrue: [ ^ 'dead' ]
		ifFalse: [ 5 - (minutes * 0.01) ]
]

{ #category : #'as yet unclassified' }
Iphone >> brand [
	^ 'iPhone'
]

{ #category : #accessing }
Iphone >> minutes [
	^ minutes
]

{ #category : #accessing }
Iphone >> minutes: anObject [
	minutes := anObject
]
