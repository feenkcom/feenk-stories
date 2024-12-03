Class {
	#name : #GtCustomViewsLiveSlideDevX2024,
	#superclass : #GtInspectorViewsLiveSlide,
	#category : #FeenkMoldableDevelopmentDevX2024
}

{ #category : #'api - instantiation' }
GtCustomViewsLiveSlideDevX2024 >> create [
	| container |
	container := BlElement new
		constraintsDo: [:c |
			c horizontal fitContent.
			c vertical fitContent ];
		layout: (BlGridLayout new columnCount: 3).
	{(21/2 gtPreviewFor: GtPhlowView empty) . 
	(FileLocator imageDirectory asFileReference gtItemsFor: GtPhlowView empty) . 
	(GtGraphTreemapLayoutExamples >> #squarifyWithSevenNodes) gtExample returnValue gtPreviewFor: GtPhlowView empty. . 
	BlBezierElementExamples new curveWithAnchors gtLiveFor: GtPhlowView empty.
	(GtGraphCircleNeighbourhoodExamples new emptyNeighborhoodWithThreeCirclesAndSpace gtPreviewFor: GtPhlowView empty) . 
	(GtWhatMakesBlocSpecialExplanation new sampleText gtTextFor: GtPhlowView empty)} do: [:view | 
		container addChild: (( view
			asElementDo: [:e | 
				BlElement new 
					aptitude: BrShadowAptitude; 
					background: Color white;
					margin: (BlInsets all: 20);
					addChild: e]) size: 400@400) ].
	^ container asScalableElement
]
