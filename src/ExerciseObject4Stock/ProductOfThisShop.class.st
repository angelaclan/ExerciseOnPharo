Class {
	#name : #ProductOfThisShop,
	#superclass : #Object,
	#instVars : [
		'name',
		'unitNumber'
	],
	#category : #ExerciseObject4Stock
}

{ #category : #status }
ProductOfThisShop >> haveStock [
	^ unitNumber > 0
]

{ #category : #accessing }
ProductOfThisShop >> name [
	^ name
]

{ #category : #accessing }
ProductOfThisShop >> name: anObject [
	name := anObject
]

{ #category : #accessing }
ProductOfThisShop >> unitNumber [
	^ unitNumber
]

{ #category : #accessing }
ProductOfThisShop >> unitNumber: anObject [
	unitNumber := anObject
]
