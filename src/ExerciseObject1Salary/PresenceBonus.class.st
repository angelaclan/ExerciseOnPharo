Class {
	#name : #PresenceBonus,
	#superclass : #Object,
	#category : #ExerciseObject1Salary
}

{ #category : #accessing }
PresenceBonus >> amount: absence [

	absence = 0
		ifTrue: [ ^ 100 ]
		ifFalse: [ absence = 1
				ifTrue: [ ^ 50 ] ].
	^ 0
]
