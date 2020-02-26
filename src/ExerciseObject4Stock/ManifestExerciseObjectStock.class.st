Class {
	#name : #ManifestExerciseObjectStock,
	#superclass : #PackageManifest,
	#category : #'ExerciseObject4Stock-Manifest'
}

{ #category : #'code-critics' }
ManifestExerciseObjectStock class >> ruleRBCollectionMessagesToExternalObjectRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#ComboStockTest #testCombo2IsNotAvailable #false)) #'2020-02-26T17:30:43.229236+01:00') #(#(#RGClassDefinition #(#ComboStockTest)) #'2020-02-26T17:30:57.414236+01:00') )
]

{ #category : #'code-critics' }
ManifestExerciseObjectStock class >> ruleRBYourselfNotUsedRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#ComboStockTest #testCombo2IsNotAvailable #false)) #'2020-02-26T17:30:47.353236+01:00') #(#(#RGClassDefinition #(#ComboStockTest)) #'2020-02-26T17:30:53.374236+01:00') )
]
