Class {
	#name : #PhoneBrandTest,
	#superclass : #TestCase,
	#category : #ExerciseObject2Phone
}

{ #category : #tests }
PhoneBrandTest >> testCatalinaHasiPhone [
	| catalina |
	catalina := User new.
	catalina model: Iphone new.
	self assert: catalina cellPhoneBrand equals: 'iPhone'
]

{ #category : #tests }
PhoneBrandTest >> testJuliaHasMotorola [
	| juliana |
	juliana := User new.
	juliana model: Motorola new.
	self assert: juliana cellPhoneBrand equals: 'Motorola'
]
