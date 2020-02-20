Class {
	#name : #PhoneBrandTest,
	#superclass : #TestCase,
	#category : #ExerciseObject2Phone
}

{ #category : #tests }
PhoneBrandTest >> testCatalinaHasiPhone [
| catalina |
catalina := User new.
catalina model: Iphone.
self assert: catalina cellPhone equals: 'iPhone'
]

{ #category : #tests }
PhoneBrandTest >> testJuliaHasMotorola [
	| juliana |
	juliana := User new.
	juliana model: Motorola.
	self assert: juliana cellPhone equals: 'Motorola'
]
