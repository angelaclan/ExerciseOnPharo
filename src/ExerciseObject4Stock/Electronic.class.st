Class {
	#name : #Electronic,
	#superclass : #ProductOfThisShop,
	#instVars : [
		'minimumStock'
	],
	#category : #ExerciseObject4Stock
}

{ #category : #accessing }
Electronic >> minimumStock [
	^ minimumStock
]

{ #category : #accessing }
Electronic >> minimumStock: anObject [
	minimumStock := anObject
]

{ #category : #'as yet unclassified' }
Electronic >> needToOrder [
	^ stockUnit < minimumStock
]

{ #category : #'as yet unclassified' }
Electronic >> placeAnOrder: aNumber [
	self add: aNumber
]
