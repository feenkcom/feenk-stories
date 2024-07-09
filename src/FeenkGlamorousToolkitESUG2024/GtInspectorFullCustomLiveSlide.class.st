Class {
	#name : #GtInspectorFullCustomLiveSlide,
	#superclass : #GtLiveSlide,
	#instVars : [
		'page',
		'container'
	],
	#category : #FeenkGlamorousToolkitESUG2024
}

{ #category : #accessing }
GtInspectorFullCustomLiveSlide >> create [
	container := BlElement new
		constraintsDo: [:c |
			c horizontal fitContent.
			c vertical fitContent ];
		layout: (BlGridLayout new columnCount: 5).
	{
	

	(21/2) gtPreviewFor: GtPhlowView empty . 
	(1024*1024) gtIntegerFor:  GtPhlowView empty.
	Color random  gtPreviewFor: GtPhlowView empty.
	(Character value: 127876) gtPreviewFor: GtPhlowView empty.
	DateAndTime now gtViewDetailsIn: GtPhlowView empty.
	(BlVector x: -26 y: 19) gtDegreeFor: GtPhlowView empty.
	 FileLocator imageDirectory gtTreeFor: GtPhlowView empty.
	BaselineOfGToolkitInspector  gtMapFor: GtPhlowView empty.
	(BaselineOfGToolkitInspector 
		gtRlProjectWithRepository: 'github://feenkcom/brick:main/src')  gtProjectMapFor: GtPhlowView empty.
	(DAPThreadModel>>#gtStackFor: ) gtBytecodeFor: GtPhlowView empty.
	(AsyncPromiseExamples>>#rejectedPromiseWithOtherwise) gtExample returnValue
	 	gtFullPromiseTreeFor: GtPhlowView empty.
	(Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'gtoolkit.png') gtFileReferencePathFor:GtPhlowView empty.
	 BlBezierElementExamples new curveWithAnchors gtLiveFor:GtPhlowView empty.
	 GtGraphCircleNeighbourhoodExamples new 
		emptyNeighborhoodWithThreeCirclesAndSpace gtPreviewFor: GtPhlowView empty.
	GtWhatMakesBlocSpecialExplanation new sampleText gtTextFor:GtPhlowView empty.
	  (BlLayoutChildNodeWithTransformationExamples>>#scaleTransformation) gtExample returnValue transformation gtPreviewFor: GtPhlowView empty.
	 (GtPharoMethodCoderUpdateExamples >> #collapsedMethodCoderCheckCollapsedText) gtExample returnValue gtStepsMondrianTreeFor:GtPhlowView empty.
	 (BlFocusFinderExamples>>#focusFinderDownOnSegment_2_child_41) gtExample returnValue gtPreviewFor: GtPhlowView empty.
	 BlDevKeyboard new gtLiveFor:GtPhlowView empty.
	 (GtGraphTreemapLayoutExamples >> #squarifyWithSevenNodes) gtExample returnValue gtPreviewFor: GtPhlowView empty.
	 (BrTextEditorSelecterExamples >> #select_moveOneRight_at_6) gtExample returnValue gtLiveFor:GtPhlowView empty.
	 (BlCompositionTiledLayerExamples>>#smallTiledLayer) gtExample returnValue
	  	gtPreviewFor:GtPhlowView empty. 
	 (GtLudoRecordingGameExamples >> #gameShowingAllMoves6) gtExample returnValue gtPositionsFor:GtPhlowView empty.
	GtMonitorSpaceRunner new gtLiveFor:GtPhlowView empty.
	 (IceRepository repositories 
		detect: [ :aRepository | aRepository name = 'gtoolkit-examples' ])
			gtPackagesFor:GtPhlowView empty.
	(GtDiffBuilder 
		computeDifferencesFrom: GtDiffElementExamples new originalString
		to: GtDiffElementExamples new newString
		using: GtLineDiffSplitter new) gtTextView: GtPhlowView empty.
	(BlCompositionPainterExamples>>#paintOverlappingSimpleElementsWantingLayerInbetweenOtherElementsInParentWithTransformation) gtExample returnValue
	 	gtPreviewFor: GtPhlowView empty.
	 (MessageTally new 
		spyEvery: 1 on: [5 timesRepeat: [#gtView gtReferences contents]];
		yourself) gtGroupedByMethodFor: GtPhlowView empty.
	 (GtRlLoadedConsolidatedBaselineEvent 
		readFromFile:  (FileLocator gtResource
			/ 'feenkcom/gtoolkit/doc/loader'
			/ 'loader-log-example.txt')) gtMapFor:GtPhlowView empty.
	 (GtRlReleaserSignalsLogReader 
		readFromFile:  FileLocator gtResource
			/ 'feenkcom/gtoolkit/doc/releaser'
			/ 'releaser-log-example.txt') gtViewGroupedByActionTypeFor: GtPhlowView empty.

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
