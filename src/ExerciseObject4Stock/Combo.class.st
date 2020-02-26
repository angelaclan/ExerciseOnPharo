Class {
	#name : #Combo,
	#superclass : #Object,
	#instVars : [
		'product1',
		'product2',
		'set'
	],
	#category : #ExerciseObject4Stock
}

{ #category : #initialize }
Combo >> initialize [
	super initialize.
	set := OrderedCollection new
]

{ #category : #status }
Combo >> isAvailable [
	^ product1 stockUnit > 0 and: product2 stockUnit > 0
]

{ #category : #accessing }
Combo >> product1 [
	^ product1
]

{ #category : #accessing }
Combo >> product1: anObject [
	product1 := anObject
]

{ #category : #accessing }
Combo >> product2 [
	^ product2
]

{ #category : #accessing }
Combo >> product2: anObject [
	product2 := anObject
]

{ #category : #accessing }
Combo >> set [
	^ set
]

{ #category : #accessing }
Combo >> set: anObject [
	set := anObject
]

{ #category : #action }
Combo >> soldComboSet: aNumber [
	(product1 stockUnit < 1
		or: product2 stockUnit < 1)
		ifTrue: [ CannotSellACombo signal: 'No stock for selling as Combo' ].
	product1 haveSold: aNumber.
	product2 haveSold: aNumber
]
