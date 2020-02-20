Class {
	#name : #SalaryTest,
	#superclass : #TestCase,
	#category : #ExerciseObject1Salary
}

{ #category : #'as yet unclassified' }
SalaryTest >> testCadetAbsentOnceBonusByPercentage [
	| pepe |
	pepe := Employee new.
	pepe
		category: 'cadet';
		dayoff: 1; 
		absenceCategory: PresenceBonus new;
		resultCategory: (ResultPercentageBonus new employee: pepe).
	self assert: pepe monthlySalary equals: 1700
	"dayoff is an Instance variable, an Instance variable is not an object.
	here it is a message send to ojbect of Employee(Pepe), it make Employee point to the argument (object) 1.
	so when we send message 'employee: pepe' to object RPB new, it can excute its methode 'employee:' and bind the value to parameter 'absence'"
		

]

{ #category : #'as yet unclassified' }
SalaryTest >> testCadetAbsentOnceBonusFixed [
	| pepe |
	pepe := Employee new.
	pepe
		category: 'cadet';
		dayoff: 1;
		absenceCategory: PresenceBonus new;
		resultCategory: ResultFixBonus new.
	self assert: pepe monthlySalary equals: 1630
]

{ #category : #'as yet unclassified' }
SalaryTest >> testCadetAbsentTwiceBonusByPercentage [
	| pepe |
	pepe := Employee new.
	pepe
		category: 'cadet';
		dayoff: 2;
		absenceCategory: PresenceBonus new;
		resultCategory: (ResultPercentageBonus new employee: pepe).
	self assert: pepe monthlySalary equals: 1650
	
" why do we need to assigne pepe to object of Employee ?
if we dont assigne pepe, we cannot reuse the object we just creat"
]

{ #category : #'as yet unclassified' }
SalaryTest >> testCadetNoAbsentBonusNoResultBonus [
	| pepe |
	pepe := Employee new.
	pepe
		category: 'cadet';

		absenceCategory: NoPresenceBonus new;
		resultCategory: ResultNoBonus new.
	self assert: pepe monthlySalary equals: 1500
]

{ #category : #'as yet unclassified' }
SalaryTest >> testManagerAbsentOnceBonusByPercentage [
	| pepe |
	pepe := Employee new.
	pepe
		category: 'manager';
		dayoff: 1;
		absenceCategory: PresenceBonus new;	
		resultCategory: (ResultPercentageBonus new employee: pepe).
	self assert: pepe monthlySalary equals: 1150
]
