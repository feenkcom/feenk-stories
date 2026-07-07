Class {
	#name : 'GtInspectorFullCustomLiveEsug2026Slide',
	#superclass : 'GtLiveSlide',
	#instVars : [
		'page',
		'container'
	],
	#category : 'FeenkGlamorousToolkitESUG2026-Utils',
	#package : 'FeenkGlamorousToolkitESUG2026',
	#tag : 'Utils'
}

{ #category : 'accessing' }
GtInspectorFullCustomLiveEsug2026Slide >> create [
	container := BlElement new
		constraintsDo: [:c |
			c horizontal fitContent.
			c vertical fitContent ];
		layout: (BlGridLayout new columnCount: 3).
	{

	(BlVector x: -26 y: 19) gtDegreeFor: GtPhlowView empty.
	(Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'gtoolkit.png') gtFileReferencePathFor:GtPhlowView empty.
	 BlBezierElementExamples new curveWithAnchors gtLiveFor:GtPhlowView empty.
	 GtGraphCircleNeighbourhoodExamples new 
		emptyNeighborhoodWithThreeCirclesAndSpace gtPreviewFor: GtPhlowView empty.
	GtWhatMakesBlocSpecialExplanation new sampleText gtTextFor:GtPhlowView empty.
	  (BlLayoutChildNodeWithTransformationExamples>>#scaleTransformation) gtExample returnValue transformation gtPreviewFor: GtPhlowView empty.
	 (GtPharoMethodCoderUpdateExamples >> #collapsedMethodCoderCheckCollapsedText) gtExample returnValue gtStepsMondrianTreeFor:GtPhlowView empty.
	 (BlFocusFinderExamples>>#focusFinderDownOnSegment_2_child_41) gtExample returnValue gtPreviewFor: GtPhlowView empty.
	 BlDevKeyboard new gtLiveFor:GtPhlowView empty.
	 

	} do: [:view | 
		container addChild: (( view
			asElementDo: [:e | 
				BlElement new 
					aptitude: BrShadowAptitude; 
					background: Color white;
					margin: (BlInsets all: 20);
					addChild: e]) size: 400@400) ].
	^ container asPannableElement
]
