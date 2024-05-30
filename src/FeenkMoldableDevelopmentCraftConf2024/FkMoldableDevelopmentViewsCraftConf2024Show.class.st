Class {
	#name : #FkMoldableDevelopmentViewsCraftConf2024Show,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkMoldableDevelopmentCraftConf2024
}

{ #category : #accessing }
FkMoldableDevelopmentViewsCraftConf2024Show >> objectsRaw [
	<gtExample>
	| container |
	container := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ];
			layout: (BlGridLayout new columnCount: 4).

	self objectsToInspect
		do: [ :x | 
			container
				addChild: (((x gtRawFor: GtPhlowView empty)
						asElementDo: [ :e | 
							BrVerticalPane new
								aptitude: (BrShadowAptitude new beLarge);
								background: Color white;
								margin: (BlInsets all: 20);
								matchParent;
								addChild: e ]) size: 600 @ 400) ].
	^ container asPannableElement
]

{ #category : #accessing }
FkMoldableDevelopmentViewsCraftConf2024Show >> objectsToInspect [
	^ {"21 / 2 gtPreviewFor: GtPhlowView empty.
		1024 * 1024 gtIntegerFor: GtPhlowView empty."
		Color orange gtPreviewFor: GtPhlowView empty.
		"(Character value: 127876) gtPreviewFor: GtPhlowView empty.
		DateAndTime now gtViewDetailsIn: GtPhlowView empty.
		(BlVector x: -26 y: 19) gtDegreeFor: GtPhlowView empty.
		FileLocator imageDirectory gtTreeFor: GtPhlowView empty.
		BaselineOfGToolkitInspector gtMapFor: GtPhlowView empty."
		(MessageTally new
			spyEvery: 1 on: [ 5 timesRepeat: [ #gtView gtReferences contents ] ];
			yourself) gtGroupedByMethodFor: GtPhlowView empty.
		"DAPThreadModel >> #gtStackFor: gtBytecodeFor: GtPhlowView empty."
		(AsyncPromiseExamples >> #rejectedPromiseWithOtherwise) gtExample returnValue
			gtFullPromiseTreeFor: GtPhlowView empty.
		Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'gtoolkit.png'
			gtFileReferencePathFor: GtPhlowView empty.
		BlBezierElementExamples new curveWithAnchors gtLiveFor: GtPhlowView empty.
		GtGraphCircleNeighbourhoodExamples new
			emptyNeighborhoodWithThreeCirclesAndSpace gtPreviewFor: GtPhlowView empty.
		GtWhatMakesBlocSpecialExplanation new sampleText gtTextAttributesFor: GtPhlowView empty.
		(BlLayoutChildNodeWithTransformationExamples >> #scaleTransformation)
			gtExample returnValue transformation gtPreviewFor: GtPhlowView empty.
		(GtPharoMethodCoderUpdateExamples >> #collapsedMethodCoderCheckCollapsedText)
			gtExample returnValue gtStepsMondrianTreeFor: GtPhlowView empty.
"		(BaselineOfGToolkitInspector
			gtRlProjectWithRepository: 'github://feenkcom/brick:main/src')
			gtProjectMapFor: GtPhlowView empty."
		(BlFocusFinderExamples >> #focusFinderDownOnSegment_2_child_41) gtExample
			returnValue gtPreviewFor: GtPhlowView empty.
		"BlDevKeyboard new gtLiveFor: GtPhlowView empty."
		(GtGraphTreemapLayoutExamples >> #squarifyWithSevenNodes) gtExample
			returnValue gtPreviewFor: GtPhlowView empty.
		(BrTextEditorSelecterExamples >> #select_moveOneRight_at_6) gtExample
			returnValue gtLiveFor: GtPhlowView empty.
		(BlCompositionTiledLayerExamples >> #smallTiledLayer) gtExample returnValue
			gtPreviewFor: GtPhlowView empty.
		(GtLudoRecordingGameExamples >> #moveInitialJumpingAndCapturing) gtExample returnValue
			moveOnBoardFor: GtPhlowView empty.
		"GtMonitorSpaceRunner new gtLiveFor: GtPhlowView empty."
		"(IceRepository repositories
			detect: [ :aRepository | aRepository name = 'gtoolkit-examples' ])
			gtPackagesFor: GtPhlowView empty."
		(GtDiffBuilder
			computeDifferencesFrom: GtDiffElementExamples new originalString
			to: GtDiffElementExamples new newString
			using: GtLineDiffSplitter new) gtTextView: GtPhlowView empty.
		"(BlCompositionPainterExamples
			>> #paintOverlappingSimpleElementsWantingLayerInbetweenOtherElementsInParentWithTransformation)
			gtExample returnValue gtPreviewFor: GtPhlowView empty."
		(GtRlLoadedConsolidatedBaselineEvent
			readFromFile: FileLocator gtResource / 'feenkcom/gtoolkit/doc/loader'
					/ 'loader-log-example.txt') gtMapFor: GtPhlowView empty.
		"(GtRlReleaserSignalsLogReader
			readFromFile: FileLocator gtResource / 'feenkcom/gtoolkit/doc/releaser'
					/ 'releaser-log-example.txt')
			gtViewGroupedByActionTypeFor: GtPhlowView empty"}.
]

{ #category : #accessing }
FkMoldableDevelopmentViewsCraftConf2024Show >> objectsViewed [
	<gtExample>
	| container |
	container := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ];
			layout: (BlGridLayout new columnCount: 4).

	self objectsToInspect
		do: [ :view | 
			container
				addChild: ((view
						asElementDo: [ :e | 
							BlElement new
								aptitude: BrShadowAptitude new beLarge;
								background: Color white;
								margin: (BlInsets all: 20);
								addChild: e ]) size: 600 @ 400) ].
	^ container asPannableElement
]

{ #category : #accessing }
FkMoldableDevelopmentViewsCraftConf2024Show >> slide131RawObjects: aSlide [
	<gtSlide>
	<gtSlideNote: 'Raw objects'>
	^ aSlide element
		priority: 131;
		element: [ self objectsRaw ]
]

{ #category : #accessing }
FkMoldableDevelopmentViewsCraftConf2024Show >> slide132ViewedObjects: aSlide [
	<gtSlide>
	<gtSlideNote: 'Viewed objects'>
	^ aSlide element
		priority: 132;
		element: [ self objectsViewed ]
]

{ #category : #accessing }
FkMoldableDevelopmentViewsCraftConf2024Show >> slide201LudoInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: 'Viewed objects'>
	^ aSlide element
		priority: 202;
		element: [ GtInspector createOn: GtLudoRecordingGameExamples new gameShowingAllMoves3 ]
]

{ #category : #accessing }
FkMoldableDevelopmentViewsCraftConf2024Show >> slide202LudoInspectors: aSlide [
	<gtSlide>
	<gtSlideNote: 'Viewed objects'>
	| scripter element |
	^ aSlide element
		priority: 202;
		element: [ scripter := GtInspectorScripterExamples new
					scriptedInspectorInPagerOn: GtLudoRecordingGameExamples new gameShowingAllMoves3
					WithPlaygroundTextAndDoit: 'self moves last'.
			element := scripter elementWithoutParent.
			GtPresenterElementExplosion new
				layerQuery: BlElementLazyQuery new // GtPagerPageElement
					label: 'Flow composition';
				layerQuery: BlElementLazyQuery new // #tool
					label: 'Composable snippets and views';
				layerQuery: BlElementLazyQuery new // GtPhlowCompositeViewElementId
							// [ :each | each phlow isViewContent ]
					label: 'Embeddable content';
				explode: element ]
]
