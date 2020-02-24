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

{ #category : #tests }
FareRateTest >> testJulianaHasMotorolaWith3call [
	| juliana motorola |
	juliana := User new.
	motorola := Motorola new.
	juliana
		model: motorola;
		contract: Personal new.
	motorola
		calls: 3;
		minutes: 55.
	self assert: juliana cellPhoneBrand equals: 'Motorola'.
	self assert: motorola battery equals: 4.25.
	self assert: (juliana billAmount: motorola) equals: 25
]

{ #category : #tests }
FareRateTest >> testJulianaHasMotorolaWithNoBattery [
	| juliana motorola |
	juliana := User new.
	motorola := Motorola new.
	juliana
		model: motorola;
		contract: Personal new.
	motorola
		calls: 20;
		minutes: 113.
	self assert: juliana cellPhoneBrand equals: 'Motorola'.
	self assert: motorola battery equals: 66.2
]
