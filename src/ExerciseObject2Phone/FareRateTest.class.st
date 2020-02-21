Class {
	#name : #FareRateTest,
	#superclass : #TestCase,
	#category : #ExerciseObject2Phone
}

{ #category : #tests }
FareRateTest >> testCatalinaHasiPhoneWith20minsCharges [
	| catalina iphone |
	catalina := User new.
	iphone := Iphone new.
	iphone minutes: 20.
	catalina
		model: iphone;
		contract: MovieStar new.
	self assert: catalina cellPhoneBrand equals: 'iPhone'.
	self assert: iphone battery equals: 4.8.
	self assert: (catalina billAmount:iphone) equals: 12.0
]

{ #category : #tests }
FareRateTest >> testCatalinaHasiPhoneWith45mins [
	| catalina iphone |
	catalina := User new.
	iphone := Iphone new.
	iphone minutes: 45.
	catalina 	model: iphone;
		contract: (MovieStar new phone:iphone; yourself).	
	self assert: catalina cellPhoneBrand equals: 'iPhone'.
	self assert: iphone battery equals: 4.55.
	self assert: catalina billAmount equals: 27.0
]

{ #category : #tests }
FareRateTest >> testJulianaHasMotorolaWith1call [
	| juliana motorola |
	juliana := User new.
	motorola := Motorola new.
	motorola
		calls: 1;
		minutes: 25.
	juliana
		model: motorola;
		contract: Personal new.
	self assert: juliana cellPhoneBrand equals: 'Motorola'.
	self assert: motorola battery equals: 4.75.
	self assert: (juliana billAmount: motorola) equals: 13
]
