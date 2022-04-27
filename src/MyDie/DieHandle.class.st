Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #MyDie
}

{ #category : #initialization }
DieHandle >> + aDieHandle [

	| handle |
	handle := self class new.
	dice do: [ :each | handle addDie: each ].
	aDieHandle dice do: [ :each | handle addDie: each ].
	^ handle
]

{ #category : #initialization }
DieHandle >> addDie: aDie [

	^ dice
		  add: aDie;
		  yourself
]

{ #category : #accessing }
DieHandle >> dice [

	^ dice
]

{ #category : #accessing }
DieHandle >> dice: anObject [

	dice := anObject
]

{ #category : #initialization }
DieHandle >> diceNumber [

	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [
	super initialize.
	dice := OrderedCollection new
]

{ #category : #initialization }
DieHandle >> roll [

	| sum |
	sum := 0.
	dice do: [ :each | sum := sum + each roll ].
	^ sum
]
