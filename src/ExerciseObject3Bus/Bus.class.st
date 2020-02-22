Class {
	#name : #Bus,
	#superclass : #Object,
	#instVars : [
		'seats',
		'standups',
		'spaces',
		'n',
		'm'
	],
	#category : #ExerciseObject3Bus
}

{ #category : #testing }
Bus >> canTake: anEmployee [
	^ self thereIsAFreePlace and: [ anEmployee canGetOn: self ] 

]

{ #category : #initialize }
Bus >> initialize [
	super initialize.
	seats := OrderedCollection new.
	standups := OrderedCollection new
]

{ #category : #accessing }
Bus >> m [
	^ m
]

{ #category : #accessing }
Bus >> m: anObject [
	m := anObject
]

{ #category : #accessing }
Bus >> n [
	^ n
]

{ #category : #accessing }
Bus >> n: anObject [
	n := anObject
]

{ #category : #accessing }
Bus >> seats [
	^ seats
]

{ #category : #accessing }
Bus >> seats: anObject [
	seats := anObject
]

{ #category : #accessing }
Bus >> spaces [
	^ spaces
]

{ #category : #accessing }
Bus >> spaces: anObject [
	spaces := anObject
]

{ #category : #accessing }
Bus >> standups [
	^ standups
]

{ #category : #accessing }
Bus >> standups: anObject [
	standups := anObject
]

{ #category : #'as yet unclassified' }
Bus >> thereIsAFreePlace [
	seats size < n and: standups size < m
]
