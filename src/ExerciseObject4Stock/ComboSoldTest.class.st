Class {
	#name : #ComboSoldTest,
	#superclass : #SetUpTest,
	#category : #ExerciseObject4Stock
}

{ #category : #tests }
ComboSoldTest >> testCombo1haveSoldOne [
	| combo1 |
	book1 stockUnit: 15.
	book2 stockUnit: 10.
	combo1 := Combo new.
	combo1
		product1: book1;
		product2: book2;
		soldComboSet: 1.
	self assert: book1 stockUnit equals: 14.
	self assert: book2 stockUnit equals: 9
	
]

{ #category : #tests }
ComboSoldTest >> testCombo1haveSoldThree [
	| combo1 |
	book1 stockUnit: 15.
	book2 stockUnit: 10.
	combo1 := Combo new.
	combo1
		product1: book1;
		product2: book2;
		soldComboSet: 3.
	self assert: book1 stockUnit equals: 12.
	self assert: book2 stockUnit equals: 7
	
]

{ #category : #tests }
ComboSoldTest >> testCombo2haveSoldFive [
	| combo1 |
	book1 stockUnit: 15.
	electronic2 stockUnit: 10.
	combo1 := Combo new.
	combo1
		product1: book1;
		product2: electronic2;
		soldComboSet: 5.
	self assert: book1 stockUnit equals: 10.
	self assert: electronic2 stockUnit equals: 5
	
]

{ #category : #tests }
ComboSoldTest >> testCombo3CannotBeSold [
	| combo3 |
	electronic1 stockUnit: 0.
	electronic2 stockUnit: 10.
	combo3 := Combo new.
	combo3
		product1: electronic1;
		product2: electronic2.
	self assert: combo3 isAvailable equals: false
]
