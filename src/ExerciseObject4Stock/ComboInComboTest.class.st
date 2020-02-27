Class {
	#name : #ComboInComboTest,
	#superclass : #SetUpTest,
	#category : #ExerciseObject4Stock
}

{ #category : #tests }
ComboInComboTest >> testComboInComboNotAvailable [
	| combo1 combo2 |
	book1 	stockUnit: 10.
	book2 	stockUnit: 0.
	electronic2 stockUnit: 0.	
	combo1 := Combo new.
	combo1
		addProduct: book1;
		addProduct: book2.
		
	combo2 := Combo new.
	combo2
		addProduct: combo1;
		addProduct: electronic2.
	self assert: combo2 isAvailable equals: false
]
