Class {
	#name : #Book,
	#superclass : #ProductOfThisShop,
	#category : #ExerciseObject4Stock
}

{ #category : #'as yet unclassified' }
Book >> needToOrder [
	^ stockUnit < 10
]

{ #category : #'as yet unclassified' }
Book >> placeAnOrder: aNumber [
	self add: aNumber
]
