Class {
	#name : #ComboStockTest,
	#superclass : #SetUpTest,
	#category : #ExerciseObject4Stock
}

{ #category : #tests }
ComboStockTest >> testCombo1IsAvailable [
	| combo1 |
	book1 stockUnit: 15.
	book2 stockUnit: 10.
	combo1 := Combo new.
	combo1 set
		add: book1;
		add: book2;
		yourself.
	self assert: combo1 isAvailable equals: true
]

{ #category : #tests }
ComboStockTest >> testCombo1IsNotAvailable [
	| combo1 |
	book1 stockUnit: 0.
	book2 stockUnit: 10.
	combo1 := Combo new.
	combo1 set
		add: book1;
		add: book2;
		yourself.
	self assert: combo1 isAvailable equals: false
]

{ #category : #tests }
ComboStockTest >> testCombo2IsNotAvailable [
	| combo2 |
	book1 stockUnit: 0.
	electronic1 stockUnit: 0.
	combo2 := Combo new.
	combo2 set
		add: book1;
		add: electronic1;
		yourself.
	self assert: combo2 isAvailable equals: false
]
