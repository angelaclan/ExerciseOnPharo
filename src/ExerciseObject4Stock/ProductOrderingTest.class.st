Class {
	#name : #ProductOrderingTest,
	#superclass : #TestCase,
	#category : #ExerciseObject4Stock
}

{ #category : #tests }
ProductOrderingTest >> testBook1NeedsNotToOrder [	
	| book1 |
	book1 := Book new name: 'Tomorrow'.
	book1 stockUnit: 15.
	self assert: book1 needToOrder equals: false.
	
]

{ #category : #tests }
ProductOrderingTest >> testBook2NeedsToOrder [
	| book2 |
	book2 := Book new name: 'little Prince'.
	book2 stockUnit: 0.
	self assert: book2 needToOrder equals: true.
	
	
]

{ #category : #tests }
ProductOrderingTest >> testElectronic1NeedsNotToOrder [
	| electronic1 |
	electronic1 := Electronic new name: 'iPhone'.
	electronic1
		minimumStock: 5;
		stockUnit: 10.
	self assert: electronic1 needToOrder equals: false.
	self assert: electronic1 stockUnit equals: 10
]

{ #category : #tests }
ProductOrderingTest >> testElectronic2NeedsToOrder [
	| electronic2 |
	electronic2 := Electronic new name: 'Screen'.
	electronic2
		minimumStock: 5;
		stockUnit: 3.
	self assert: electronic2 needToOrder equals: true	
]
