Class {
	#name : #ProductStockTest,
	#superclass : #SetUpTest,
	#category : #ExerciseObject4Stock
}

{ #category : #tests }
ProductStockTest >> testBook1HasStock [
	
	book1 stockUnit: 15.
	self assert: book1 isAvailable equals: true.
	self assert: book1 stockUnit equals: 15
]

{ #category : #tests }
ProductStockTest >> testBook2HasNoStock [
	
	book2 stockUnit: 0.
	self assert: book2 isAvailable equals: false.
	self assert: book2 stockUnit equals: 0
]

{ #category : #tests }
ProductStockTest >> testElectronic1HasStock [
	
	electronic1 stockUnit: 10.
	self assert: electronic1 isAvailable equals: true.
	self assert: electronic1 stockUnit equals: 10
]

{ #category : #tests }
ProductStockTest >> testElectronic2HasNoStock [
	
	electronic2 stockUnit: 0.
	self assert: electronic2 isAvailable equals: false.
	self assert: electronic2 stockUnit equals: 0
]
