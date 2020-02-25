Class {
	#name : #ProductStockTest,
	#superclass : #TestCase,
	#category : #ExerciseObject4Stock
}

{ #category : #tests }
ProductStockTest >> testBook1HasStock [
	| book1 |
	book1 := Book new name: 'Tomorrow'.
	book1 stockUnit: 15.
	self assert: book1 haveStock equals: true.
	self assert: book1 stockUnit equals: 15
]

{ #category : #tests }
ProductStockTest >> testBook2HasNoStock [
	| book2 |
	book2 := Book new name: 'Little Prince'.
	book2 stockUnit: 0.
	self assert: book2 haveStock equals: false.
	self assert: book2 stockUnit equals: 0
]

{ #category : #tests }
ProductStockTest >> testElectronic1HasStock [
	| electronic1 |
	electronic1 := Electronic new name: 'iPhone'.
	electronic1 stockUnit: 10.
	self assert: electronic1 haveStock equals: true.
	self assert: electronic1 stockUnit equals: 10
]

{ #category : #tests }
ProductStockTest >> testElectronic2HasNoStock [
	| electronic2 |
	electronic2 := Electronic new name: 'Screen'.
	electronic2 stockUnit: 0.
	self assert: electronic2 haveStock equals: false.
	self assert: electronic2 stockUnit equals: 0
]
