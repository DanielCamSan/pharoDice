Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #MyDie
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: aNumber [

	^ self new
		  faces: aNumber;
		  yourself
]

{ #category : #accessing }
Die >> faces [

	^ faces
]

{ #category : #accessing }
Die >> faces: anInteger [

	faces := anInteger
]

{ #category : #accessing }
Die >> initialize [

	super initialize.
	faces := 6
]

{ #category : #accessing }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: '(';
		print: faces;
		nextPutAll: ')'
]

{ #category : #accessing }
Die >> roll [

	^ faces atRandom
]
