Class {
	#name : #SetUpTest,
	#superclass : #TestCase,
	#instVars : [
		'book1',
		'book2',
		'electronic1',
		'electronic2'
	],
	#category : #ExerciseObject4Stock
}

{ #category : #running }
SetUpTest >> setUp [
	book1 := Book new name: 'Tomorrow'.
	book2 := Book new name: 'Little Prince'.
	electronic1 := Electronic new name: 'iPhone'.
	electronic2 := Electronic new name: 'Screen'
]
