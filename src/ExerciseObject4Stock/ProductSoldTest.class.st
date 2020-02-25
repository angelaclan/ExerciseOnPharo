Class {
	#name : #ProductSoldTest,
	#superclass : #TestCase,
	#category : #ExerciseObject4Stock
}

{ #category : #tests }
ProductSoldTest >> testBook1HasSoldOne [
	| book1 |
	book1 := Book new name: 'Tomorrow'.
	book1 stockUnit: 15.
	book1 haveSold: 2.
	self assert: book1 stockUnit equals: 13.
	self assert: book1 haveStock equals: true
]

{ #category : #tests }
ProductSoldTest >> testBook2HasSoldThree [
	| book2 |
	book2 := Book new name: 'little Prince'.
	book2 stockUnit: 10.
	book2 haveSold: 3.
	self assert: book2 stockUnit equals: 7.
	self assert: book2 needToOrder equals: true
]

{ #category : #tests }
ProductSoldTest >> testElectronic1HasSoldOne [
	| electronic1 |
	electronic1 := Electronic new name: 'iPhone'.
	electronic1
		minimumStock: 5;
		stockUnit: 10;
		haveSold: 5.
	self assert: electronic1 stockUnit equals: 5.
	self assert: electronic1 needToOrder equals: false
]

{ #category : #tests }
ProductSoldTest >> testElectronic2NeedsToOrder [
	| electronic2 |
	electronic2 := Electronic new name: 'Screen'.
	electronic2
		minimumStock: 5;
		stockUnit: 3;
		haveSold: 3.	
	self assert: electronic2 stockUnit equals: 0.		
	self assert: electronic2 needToOrder equals: true	
]
