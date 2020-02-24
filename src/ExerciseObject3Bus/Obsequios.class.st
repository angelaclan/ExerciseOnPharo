Class {
	#name : #Obsequios,
	#superclass : #Object,
	#instVars : [
		'boss'
	],
	#category : #ExerciseObject3Bus
}

{ #category : #accessing }
Obsequios >> boss [
	^ boss
]

{ #category : #accessing }
Obsequios >> boss: anObject [
	boss := anObject
]

{ #category : #testing }
Obsequios >> shouldGetOn: aBus [
	^ aBus canTake: boss
]
