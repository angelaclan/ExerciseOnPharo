Class {
	#name : #Combo,
	#superclass : #Object,
	#instVars : [
		'set'
	],
	#category : #ExerciseObject4Stock
}

{ #category : #action }
Combo >> addProduct: aProduct [
	set add: aProduct
]

{ #category : #initialize }
Combo >> initialize [
	super initialize.
	set := OrderedCollection new.
	
]

{ #category : #status }
Combo >> isAvailable [
	^ set allSatisfy: [ :product | product isAvailable ]
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
	"(product1 stockUnit < 1
		or: product2 stockUnit < 1)
		ifTrue: [ CannotSellACombo signal: 'No stock for selling as Combo' ]."
	self isAvailable ifFalse:[CannotSellACombo signal: 'No stock for selling as Combo']	.
	set do: [ :product | product haveSold: aNumber].
	
]
