Class {
	#name : #ProductOfThisShop,
	#superclass : #Object,
	#instVars : [
		'name',
		'stockUnit'
	],
	#category : #ExerciseObject4Stock
}

{ #category : #action }
ProductOfThisShop >> haveSold: aNumber [
	stockUnit := stockUnit - aNumber
]

{ #category : #status }
ProductOfThisShop >> isAvailable [
	^ stockUnit > 0
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
ProductOfThisShop >> stockUnit [
	^ stockUnit
]

{ #category : #accessing }
ProductOfThisShop >> stockUnit: anObject [
	stockUnit := anObject
]
