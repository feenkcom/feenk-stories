Class {
	#name : #GtDifferentSnippetsLiveSlide,
	#superclass : #GtLiveSlide,
	#instVars : [
		'page'
	],
	#category : #FeenkGlamorousToolkitESUG2024
}

{ #category : #accessing }
GtDifferentSnippetsLiveSlide >> create [
	| container dataFile |
	
	container := BlElement new
		constraintsDo: [:c |
			c horizontal fitContent.
			c vertical fitContent ];
		layout: (BlGridLayout new columnCount: 2).
		
	page children do: [:aSnippet | 
		| element |
		element := (aSnippet gtLiveFor: GtPhlowEmptyView new) asElement.
		
		container addChild: 
				((BrVerticalPane new 
					aptitude: BrShadowAptitude; 
					background: Color white;
					margin: (BlInsets all: 20);
					clipChildren: false;
					matchParent;
					addChild: element)
						size: 600@400)  ].
					
	^ container asPannableElement
]

{ #category : #slides }
GtDifferentSnippetsLiveSlide >> page: aPage [
	page := aPage 
]
