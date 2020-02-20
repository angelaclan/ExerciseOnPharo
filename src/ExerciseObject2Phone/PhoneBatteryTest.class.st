Class {
	#name : #PhoneBatteryTest,
	#superclass : #TestCase,
	#category : #ExerciseObject2Phone
}

{ #category : #tests }
PhoneBatteryTest >> testCatalinaHasiPhoneWith20mins [
	| catalina iphone |
	catalina := User new.
	iphone := Iphone new.
	iphone minutes: 20.
	catalina 	model: iphone.		
	self assert: catalina cellPhoneBrand equals: 'iPhone'.
	self assert: iphone battery equals: 4.8
]

{ #category : #tests }
PhoneBatteryTest >> testCatalinaHasiPhoneWith45mins [
	| catalina iphone |
	catalina := User new.
	iphone := Iphone new.
	iphone minutes: 45.
	catalina 	model: iphone.		
	self assert: catalina cellPhoneBrand equals: 'iPhone'.
	self assert: iphone battery equals: 4.55
]

{ #category : #tests }
PhoneBatteryTest >> testJulianaHasMotorolaWith1call [
	| juliana motorola |
	juliana := User new.
	motorola := Motorola new.
	juliana model: motorola.
	motorola calls: 1.
	self assert: juliana cellPhoneBrand equals: 'Motorola'.
	self assert: motorola battery equals: 4.75
]

{ #category : #tests }
PhoneBatteryTest >> testJulianaHasMotorolaWith3call [
	| juliana motorola |
	juliana := User new.
	motorola := Motorola new.
	juliana model: motorola.
	motorola calls: 3.
	self assert: juliana cellPhoneBrand equals: 'Motorola'.
	self assert: motorola battery equals: 4.25
]

{ #category : #tests }
PhoneBatteryTest >> testJulianaHasMotorolaWithNoBattery [
	| juliana motorola |
	juliana := User new.
	motorola := Motorola new.
	juliana model: motorola.
	motorola calls: 20.
	self assert: juliana cellPhoneBrand equals: 'Motorola'.
	self assert: motorola battery equals: 0
]
