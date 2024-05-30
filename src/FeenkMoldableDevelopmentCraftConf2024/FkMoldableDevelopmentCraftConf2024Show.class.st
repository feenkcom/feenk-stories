Class {
	#name : #FkMoldableDevelopmentCraftConf2024Show,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkMoldableDevelopmentCraftConf2024
}

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> objectsRaw [
	<gtExample>
	| container |
	container := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ];
			layout: (BlGridLayout new columnCount: 5).

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
FkMoldableDevelopmentCraftConf2024Show >> objectsToInspect [
	^ {21 / 2 gtPreviewFor: GtPhlowView empty.
		1024 * 1024 gtIntegerFor: GtPhlowView empty.
		Color orange gtPreviewFor: GtPhlowView empty.
		(Character value: 127876) gtPreviewFor: GtPhlowView empty.
		DateAndTime now gtViewDetailsIn: GtPhlowView empty.
		(BlVector x: -26 y: 19) gtDegreeFor: GtPhlowView empty.
		FileLocator imageDirectory gtTreeFor: GtPhlowView empty.
		BaselineOfGToolkitInspector gtMapFor: GtPhlowView empty.
		(MessageTally new
			spyEvery: 1 on: [ 5 timesRepeat: [ #gtView gtReferences contents ] ];
			yourself) gtGroupedByMethodFor: GtPhlowView empty.
		DAPThreadModel >> #gtStackFor: gtBytecodeFor: GtPhlowView empty.
		(AsyncPromiseExamples >> #rejectedPromiseWithOtherwise) gtExample returnValue
			gtFullPromiseTreeFor: GtPhlowView empty.
		Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'gtoolkit.png'
			gtFileReferencePathFor: GtPhlowView empty.
		BlBezierElementExamples new curveWithAnchors gtLiveFor: GtPhlowView empty.
		GtGraphCircleNeighbourhoodExamples new
			emptyNeighborhoodWithThreeCirclesAndSpace gtPreviewFor: GtPhlowView empty.
		GtWhatMakesBlocSpecialExplanation new sampleText gtTextFor: GtPhlowView empty.
		(BlLayoutChildNodeWithTransformationExamples >> #scaleTransformation)
			gtExample returnValue transformation gtPreviewFor: GtPhlowView empty.
		(GtPharoMethodCoderUpdateExamples >> #collapsedMethodCoderCheckCollapsedText)
			gtExample returnValue gtStepsMondrianTreeFor: GtPhlowView empty.
		(BaselineOfGToolkitInspector
			gtRlProjectWithRepository: 'github://feenkcom/brick:main/src')
			gtProjectMapFor: GtPhlowView empty.
		(BlFocusFinderExamples >> #focusFinderDownOnSegment_2_child_41) gtExample
			returnValue gtPreviewFor: GtPhlowView empty.
		BlDevKeyboard new gtLiveFor: GtPhlowView empty.
		(GtGraphTreemapLayoutExamples >> #squarifyWithSevenNodes) gtExample
			returnValue gtPreviewFor: GtPhlowView empty.
		(BrTextEditorSelecterExamples >> #select_moveOneRight_at_6) gtExample
			returnValue gtLiveFor: GtPhlowView empty.
		(BlCompositionTiledLayerExamples >> #smallTiledLayer) gtExample returnValue
			gtPreviewFor: GtPhlowView empty.
		(GtLudoRecordingGameExamples >> #gameShowingAllMoves6) gtExample returnValue
			gtPositionsFor: GtPhlowView empty.
		GtMonitorSpaceRunner new gtLiveFor: GtPhlowView empty.
		(IceRepository repositories
			detect: [ :aRepository | aRepository name = 'gtoolkit-examples' ])
			gtPackagesFor: GtPhlowView empty.
		(GtDiffBuilder
			computeDifferencesFrom: GtDiffElementExamples new originalString
			to: GtDiffElementExamples new newString
			using: GtLineDiffSplitter new) gtTextView: GtPhlowView empty.
		(BlCompositionPainterExamples
			>> #paintOverlappingSimpleElementsWantingLayerInbetweenOtherElementsInParentWithTransformation)
			gtExample returnValue gtPreviewFor: GtPhlowView empty.
		(GtRlLoadedConsolidatedBaselineEvent
			readFromFile: FileLocator gtResource / 'feenkcom/gtoolkit/doc/loader'
					/ 'loader-log-example.txt') gtMapFor: GtPhlowView empty.
		(GtRlReleaserSignalsLogReader
			readFromFile: FileLocator gtResource / 'feenkcom/gtoolkit/doc/releaser'
					/ 'releaser-log-example.txt')
			gtViewGroupedByActionTypeFor: GtPhlowView empty}.
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> objectsViewed [
	<gtExample>
	| container |
	container := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ];
			layout: (BlGridLayout new columnCount: 5).

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
FkMoldableDevelopmentCraftConf2024Show >> pagerWithPageNamed: pageName from: dbName [
	| page book |
	book := LeDatabasesRegistry defaultLogicalDatabase databaseNamed: dbName.
	page := book pageNamed: pageName.
	^ page asPhlowTool
		asElementDo: [ :e | 
			| aPager |
			aPager := GtPager createWrappedOn: e.
			aPager addAptitude: BrShadowAptitude new.
			aPager ]
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> slide001Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Tudor Girba. I am the CEO of feenk and today I want to talk about Glamorous Toolkit.'>
	^ aSlide title
		priority: 1;
		titleWithFormat: ('moldable development' asRopedText 
			fontSize: 70;
			glamorousCodeFont;
			bold);
		subtitleWithFormat: ('@girba' asRopedText 
			fontSize: 40;
			glamorousCodeFont)
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> slide002FeenkSlideFor: aSlide [
	<gtSlide>
	^ aSlide element
		priority: 2;
		element: [ | form |
			form := PNGReadWriter
					formFromFileNamed: (GtResourceReference path: Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'feenk.png')
							fullName.
			BlElement new
				constraintsDo: [ :c | 
					c horizontal matchParent.
					c vertical matchParent ];
				layout: BlLinearLayout horizontal;
				addChild: (BlElement new
						constraintsDo: [ :c | 
							c horizontal matchParent.
							c vertical fitContent.
							c linear vertical alignCenter ];
						layout: BlLinearLayout vertical;
						addChild: (BrVerticalPane new
								constraintsDo: [ :c | c linear horizontal alignCenter ];
								addChild: (form asElement asScalableElement
										maxScale: 0.2;
										constraintsDo: [ :c | 
											c horizontal matchParent.
											c vertical matchParent ]);
								hExact: 200;
								vExact: 200)) ]
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> slide003CustomTools: aSlide [
	<gtSlide>
	^ aSlide text
		priority: 3;
		horizontalWeight: 1;
		newTextWithFormat: ('moldable development is
programming through
custom tools
a
b' asRopedText
				fontSize: 60;
				glamorousCodeFont;
				thin;
				in: [ :t | 
					(t from: 'moldable development is' size + 1 to: t size - 3) bold.
					(t from: t size - 3 to: t size) foreground: Color transparent ];
				yourself)
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> slide004Thousands: aSlide [
	<gtSlide>
	^ aSlide text
		priority: 4;
		horizontalWeight: 1;
		newTextWithFormat: ('moldable development is
programming through
thousands of
custom tools
b' asRopedText
				fontSize: 60;
				glamorousCodeFont;
				thin;
				in: [ :t | 
					(t
						from: 'moldable development is
programming through' size + 1
						to: t size - 2) bold.
					(t from: t size - 1 to: t size) foreground: Color transparent ];
				yourself)
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> slide005ThousandsPerSystem: aSlide [
	<gtSlide>
	^ aSlide text
		priority: 5;
		horizontalWeight: 1;
		newTextWithFormat: ('moldable development is
programming through
thousands of
custom tools
per system' asRopedText
				fontSize: 60;
				glamorousCodeFont;
				thin;
				in: [ :t | 
					(t
						from: 'moldable development is
programming through' size + 1
						to: t size) bold ];
				yourself)
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> slide015React: aSlide [
	"<gtSlide>"
	<gtSlideNote: 'Software assessment'>
	^ aSlide element
		priority: 15;
		element: [ | aPager |
			aPager := GtPager createWrappedOn: ('zooniverse' asFileReference gtDefaultInspectorTool asElement).
			aPager maximized.
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> slide111WardleyMapWithActions: aSlide [
	<gtSlide>
	^ aSlide element
		priority: 111;
		element: [ self wardleyMapElementMoldableDevelopmentWithTension01 ]
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> slide112WardleyMapWithActions: aSlide [
	<gtSlide>
	^ aSlide element
		priority: 112;
		element: [ self wardleyMapElementMoldableDevelopmentWithTension02 ]
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> slide113WardleyMapWithActions: aSlide [
	<gtSlide>
	^ aSlide element
		priority: 113;
		element: [ self wardleyMapElementMoldableDevelopmentWithTension03 ]
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> slide201GTSlideFor: aSlide [
	<gtSlide>
	^ aSlide title
		priority: 301;
		titleWithFormat: ('gtoolkit.com' asRopedText 
			fontSize: 70;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'g' size + 1 to: t size) bold]; yourself)
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> slide211TreemapOfExtensionsAndExamples: aSlide [
	<gtSlide>
	<text: 'There are thousands of extensions in Glamorous Toolkit out of the box.'>
	^ aSlide element
		priority: 311;
		element: [ GtImage treemapWithAllExtensions ]
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> slide401Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Tudor Girba. I am the CEO of feenk and today I want to talk about Glamorous Toolkit.'>
	^ aSlide title
		priority: 401;
		titleWithFormat: ('moldable development' asRopedText 
			fontSize: 70;
			glamorousCodeFont;
			bold);
		subtitleWithFormat: ('@girba' asRopedText 
			fontSize: 40;
			glamorousCodeFont)
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> wardleyMapElementForJson: json [
	| model aWardleyMapElement aWardleyMapViewModel |
	model := GtWardleyMapFromDictionaryImporter importMapFromJSONString: json.
	aWardleyMapViewModel := GtWardleyMapViewModel new.
	aWardleyMapViewModel wardleyMapModel: model.
	aWardleyMapElement := GtWardleyMapElement new.
	aWardleyMapElement wardleyMapViewModel: aWardleyMapViewModel.
	aWardleyMapElement
		evolutionSections: {'genesis'.
				'custom built'.
				'product (+rental)'.
				'commodity'}.
	^ aWardleyMapElement
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> wardleyMapElementFullWithRoles [
	<gtExample>
	| json |
	json := self wardleyMapJsonFullWithRoles.
	^ self wardleyMapElementForJson: json
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> wardleyMapElementFullWithoutRoles [
	<gtExample>
	| json |
	json := self wardleyMapJsonFullWithoutRoles.
	^ self wardleyMapElementForJson: json
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> wardleyMapElementMoldableDevelopmentWithTension01 [
	<gtExample>
	| json element |
	json := self wardleyMapJsonMoldableDevelopmentWithTension01.
	element := self wardleyMapElementForJson: json.
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'INVESTIGATION'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ GtPresenterSlideShow create: FkDbMigrationCraftConf2024Show new ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'EXPLORATION'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ (self
									pagerWithPageNamed: 'Identifying an editor bug by inspecting wrapped Rust objects'
									from: 'Glamorous Toolkit Book') maximized ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'CONVERSATION'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ (self
									pagerWithPageNamed: 'Executable domain-driven design: the Ludo game case study'
									from: 'Glamorous Toolkit Book') maximized]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'ANALYSIS'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ self
									pagerWithPageNamed: 'Analyzing Ruby on Rails: the Whitehall case study'
									from: 'Glamorous Toolkit Book' ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'DEVELOPER EXPERIENCE'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ GtPresenterSlideShow create: FkMoldableDevelopmentViewsCraftConf2024Show new ]} ]
		ifNone: [  ].
	^ element
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> wardleyMapElementMoldableDevelopmentWithTension02 [
	<gtExample>
	| json element |
	json := self wardleyMapJsonMoldableDevelopmentWithTension02.
	element := self wardleyMapElementForJson: json.
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'INVESTIGATION'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ GtPresenterSlideShow create: FkDbMigrationCraftConf2024Show new ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'EXPLORATION'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ (self
									pagerWithPageNamed: 'Identifying an editor bug by inspecting wrapped Rust objects'
									from: 'Glamorous Toolkit Book') maximized ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'CONVERSATION'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ (self
									pagerWithPageNamed: 'Executable domain-driven design: the Ludo game case study'
									from: 'Glamorous Toolkit Book') maximized]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'ANALYSIS'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ self
									pagerWithPageNamed: 'Analyzing Ruby on Rails: the Whitehall case study'
									from: 'Glamorous Toolkit Book' ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'DEVELOPER EXPERIENCE'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ GtPresenterSlideShow create: FkMoldableDevelopmentViewsCraftConf2024Show new ]} ]
		ifNone: [  ].
	^ element
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> wardleyMapElementMoldableDevelopmentWithTension03 [
	<gtExample>
	| json element |
	json := self wardleyMapJsonMoldableDevelopmentWithTension.
	element := self wardleyMapElementForJson: json.
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'INVESTIGATION'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ GtPresenterSlideShow create: FkDbMigrationCraftConf2024Show new ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'EXPLORATION'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ (self
									pagerWithPageNamed: 'Identifying an editor bug by inspecting wrapped Rust objects'
									from: 'Glamorous Toolkit Book') maximized ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'CONVERSATION'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ (self
									pagerWithPageNamed: 'Executable domain-driven design: the Ludo game case study'
									from: 'Glamorous Toolkit Book') maximized]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'ANALYSIS'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ self
									pagerWithPageNamed: 'Analyzing Ruby on Rails: the Whitehall case study'
									from: 'Glamorous Toolkit Book' ]} ]
		ifNone: [  ].
	element wardleyMapViewModel wardleyMapModel
		nodeWithName: 'DEVELOPER EXPERIENCE'
		ifFound: [ :aNode | 
			aNode
				decorators: {GtWardleyMapMaximizerAction new
							icon: BrGlamorousVectorIcons inspect;
							stencil: [ GtPresenterSlideShow create: FkMoldableDevelopmentViewsCraftConf2024Show new ]} ]
		ifNone: [  ].
	^ element
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> wardleyMapJsonFullWithRoles [
	<gtExample>
	^ '{
	"nodes" : [
		{
			"id" : "cc5c56d3-1dc2-0d00-af61-b70e044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.32,
			"y" : 0.07999999999999996,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.08333333333333333,
				"y" : -1.0833333333333333,
				"text" : "developers"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "945d56d3-1dc2-0d00-af62-0553044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.45,
			"y" : 0.07999999999999996,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : -0.9166666666666666,
				"text" : "business"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.39,
			"y" : 0.18999999999999995,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.0833333333333335,
				"y" : 0.5833333333333334,
				"text" : "challenge"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.4624600246002461,
			"y" : 0.24910418834929585,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.5,
				"y" : -1.0833333333333333,
				"text" : "decision"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"x" : 0.17749058971141782,
			"y" : 0.63,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.3333333333333333,
				"y" : 2.4166666666666665,
				"text" : "manual inspection"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"x" : 0.3988205771643664,
			"y" : 0.63,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.5833333333333334,
				"y" : 2.4166666666666665,
				"text" : "specific coding"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "d76256d3-1dc2-0d00-af68-fe50044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"x" : 0.32,
			"y" : 0.63,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.6666666666666666,
				"y" : -1.1666666666666667,
				"text" : "synthetization"
			},
			"pipeline" : {
				"inner_nodes" : [
					"c36256d3-1dc2-0d00-af66-15f1044d74b3",
					"ce6256d3-1dc2-0d00-af67-b79a044d74b3"
				],
				"x" : 0.1674905897114178,
				"y" : 0.4088205771643664,
				"is_visible" : true
			}
		},
		{
			"id" : "eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"x" : 0.24,
			"y" : 0.42,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.333333333333333,
				"y" : 0.4166666666666667,
				"text" : "manual  views"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"x" : 0.7742158092848181,
			"y" : 0.42,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.75,
				"y" : 0.3333333333333333,
				"text" : "generated views"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "fd6256d3-1dc2-0d00-af6b-f6ec044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"x" : 0.5,
			"y" : 0.42,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.1666666666666665,
				"y" : -0.5833333333333334,
				"text" : "information"
			},
			"pipeline" : {
				"inner_nodes" : [
					"eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
					"f46256d3-1dc2-0d00-af6a-73d2044d74b3"
				],
				"x" : 0.22999999999999998,
				"y" : 0.7842158092848182,
				"is_visible" : true
			}
		},
		{
			"id" : "076356d3-1dc2-0d00-af6c-40cc044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"x" : 0.53,
			"y" : 0.84,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.3333333333333335,
				"text" : "rigid"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"x" : 0.6912923462986199,
			"y" : 0.84,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5833333333333334,
				"y" : 2.25,
				"text" : "moldable"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "196356d3-1dc2-0d00-af6e-c32e044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"x" : 0.6,
			"y" : 0.84,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -1.5,
				"y" : -0.75,
				"text" : "tools"
			},
			"pipeline" : {
				"inner_nodes" : [
					"076356d3-1dc2-0d00-af6c-40cc044d74b3",
					"106356d3-1dc2-0d00-af6d-451a044d74b3"
				],
				"x" : 0.52,
				"y" : 0.7012923462986199,
				"is_visible" : true
			}
		},
		{
			"id" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.6200829537592247,
			"y" : 0.2830293980700489,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5833333333333334,
				"y" : -1.3333333333333333,
				"text" : "action"
			},
			"pipeline" : {
				"is_visible" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "cc5c56d3-1dc2-0d00-af61-b70e044d74b3",
			"to" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"to" : "945d56d3-1dc2-0d00-af62-0553044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"to" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"to" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"to" : "eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
			"to" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : true
		},
		{
			"from" : "076356d3-1dc2-0d00-af6c-40cc044d74b3",
			"to" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : true
		},
		{
			"from" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"to" : "076356d3-1dc2-0d00-af6c-40cc044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"to" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : true
		},
		{
			"from" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"to" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"to" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"color" : {
				"green" : 0.059628543499511244,
				"blue" : 1.0,
				"alpha" : 1.0,
				"red" : 0.059628543499511244
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"to" : "fd6256d3-1dc2-0d00-af6b-f6ec044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"to" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"to" : "fd6256d3-1dc2-0d00-af6b-f6ec044d74b3",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"to" : "196356d3-1dc2-0d00-af6e-c32e044d74b3",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : false
		}
	]
}'.
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> wardleyMapJsonFullWithoutRoles [
	<gtExample>
	^ '{
	"nodes" : [
		{
			"id" : "cc5c56d3-1dc2-0d00-af61-b70e044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.32,
			"y" : 0.07999999999999996,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.08333333333333333,
				"y" : -1.0833333333333333,
				"text" : "developers"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "945d56d3-1dc2-0d00-af62-0553044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.45,
			"y" : 0.07999999999999996,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : -0.9166666666666666,
				"text" : "business"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.39,
			"y" : 0.18999999999999995,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.0833333333333335,
				"y" : 0.5833333333333334,
				"text" : "challenge"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.4624600246002461,
			"y" : 0.24910418834929585,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.5,
				"y" : -1.0833333333333333,
				"text" : "decision"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"x" : 0.17749058971141782,
			"y" : 0.63,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.3333333333333333,
				"y" : 2.4166666666666665,
				"text" : "manual inspection"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.3988205771643664,
			"y" : 0.63,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.5833333333333334,
				"y" : 2.4166666666666665,
				"text" : "specific coding"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "d76256d3-1dc2-0d00-af68-fe50044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.32,
			"y" : 0.63,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.6666666666666666,
				"y" : -1.1666666666666667,
				"text" : "synthetization"
			},
			"pipeline" : {
				"inner_nodes" : [
					"c36256d3-1dc2-0d00-af66-15f1044d74b3",
					"ce6256d3-1dc2-0d00-af67-b79a044d74b3"
				],
				"x" : 0.1674905897114178,
				"y" : 0.4088205771643664,
				"is_visible" : true
			}
		},
		{
			"id" : "eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"x" : 0.24,
			"y" : 0.42,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.333333333333333,
				"y" : 0.4166666666666667,
				"text" : "manual  views"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7742158092848181,
			"y" : 0.42,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.75,
				"y" : 0.3333333333333333,
				"text" : "generated views"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "fd6256d3-1dc2-0d00-af6b-f6ec044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5,
			"y" : 0.42,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -3.1666666666666665,
				"y" : -0.5833333333333334,
				"text" : "information"
			},
			"pipeline" : {
				"inner_nodes" : [
					"eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
					"f46256d3-1dc2-0d00-af6a-73d2044d74b3"
				],
				"x" : 0.22999999999999998,
				"y" : 0.7842158092848182,
				"is_visible" : true
			}
		},
		{
			"id" : "076356d3-1dc2-0d00-af6c-40cc044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"x" : 0.53,
			"y" : 0.84,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : 2.3333333333333335,
				"text" : "rigid"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6912923462986199,
			"y" : 0.84,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5833333333333334,
				"y" : 2.25,
				"text" : "moldable"
			},
			"pipeline" : {
				"is_visible" : false
			}
		},
		{
			"id" : "196356d3-1dc2-0d00-af6e-c32e044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6,
			"y" : 0.84,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -1.5,
				"y" : -0.75,
				"text" : "tools"
			},
			"pipeline" : {
				"inner_nodes" : [
					"076356d3-1dc2-0d00-af6c-40cc044d74b3",
					"106356d3-1dc2-0d00-af6d-451a044d74b3"
				],
				"x" : 0.52,
				"y" : 0.7012923462986199,
				"is_visible" : true
			}
		},
		{
			"id" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6200829537592247,
			"y" : 0.2830293980700489,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5833333333333334,
				"y" : -1.3333333333333333,
				"text" : "action"
			},
			"pipeline" : {
				"is_visible" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "cc5c56d3-1dc2-0d00-af61-b70e044d74b3",
			"to" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"to" : "945d56d3-1dc2-0d00-af62-0553044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "036256d3-1dc2-0d00-af63-a3b9044d74b3",
			"to" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"to" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"to" : "eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "eb6256d3-1dc2-0d00-af69-3f5b044d74b3",
			"to" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : true
		},
		{
			"from" : "076356d3-1dc2-0d00-af6c-40cc044d74b3",
			"to" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : true
		},
		{
			"from" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"to" : "076356d3-1dc2-0d00-af6c-40cc044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "c36256d3-1dc2-0d00-af66-15f1044d74b3",
			"to" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"color" : {
				"green" : 0.7497556207233627,
				"blue" : 0.7497556207233627,
				"alpha" : 1.0,
				"red" : 0.7497556207233627
			},
			"width" : 1.0,
			"arrow" : true
		},
		{
			"from" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"to" : "106356d3-1dc2-0d00-af6d-451a044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "f46256d3-1dc2-0d00-af6a-73d2044d74b3",
			"to" : "ce6256d3-1dc2-0d00-af67-b79a044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"to" : "fd6256d3-1dc2-0d00-af6b-f6ec044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "a36256d3-1dc2-0d00-af65-c4e3044d74b3",
			"to" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"to" : "fd6256d3-1dc2-0d00-af6b-f6ec044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		},
		{
			"from" : "cc3c18be-a5c7-0d00-9c0c-3fcd0f1a6d22",
			"to" : "196356d3-1dc2-0d00-af6e-c32e044d74b3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false
		}
	]
}'.
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> wardleyMapJsonMoldableDevelopmentWithTension [
	^ '{
	"nodes" : [
		{
			"id" : "72330433-e5d5-0d00-be39-f20a0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.4288152791417525,
			"y" : 0.04127582863839715,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.9166666666666666,
				"y" : -1.0833333333333333,
				"text" : "Business people"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "ed340433-e5d5-0d00-be3b-99d80bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.55,
			"y" : 0.2598653706417932,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.16666666666666666,
				"y" : -1.25,
				"text" : "EXPLORATION"
			},
			"pipeline" : {
				"inner_nodes" : [
					"7a350433-e5d5-0d00-be43-6fc90bf47be3",
					"83350433-e5d5-0d00-be44-2b950bf47be3"
				],
				"x" : 0.19609475032010243,
				"y" : 0.73,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "05350433-e5d5-0d00-be3c-6bd40bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6400754054105195,
			"y" : 0.8549418104578065,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : -1.0,
				"text" : "DEVELOPER EXPERIENCE"
			},
			"pipeline" : {
				"inner_nodes" : [
					"98350433-e5d5-0d00-be46-c06d0bf47be3",
					"8e350433-e5d5-0d00-be45-6c660bf47be3"
				],
				"x" : 0.5300754054105196,
				"y" : 0.7739166346038613,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "12350433-e5d5-0d00-be3d-327d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.51,
			"y" : 0.12,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 7.333333333333333,
				"y" : -0.5,
				"text" : "INVESTIGATION"
			},
			"pipeline" : {
				"inner_nodes" : [
					"a3350433-e5d5-0d00-be47-72cc0bf47be3",
					"ad350433-e5d5-0d00-be48-e4d90bf47be3"
				],
				"x" : 0.31,
				"y" : 0.71,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "1c350433-e5d5-0d00-be3e-af930bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5504799171202766,
			"y" : 0.3941750734716453,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.25,
				"y" : -1.1666666666666667,
				"text" : "CONVERSATION"
			},
			"pipeline" : {
				"inner_nodes" : [
					"b8350433-e5d5-0d00-be49-8f340bf47be3",
					"c3350433-e5d5-0d00-be4a-a52f0bf47be3"
				],
				"x" : 0.3004799171202765,
				"y" : 0.6704799171202767,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "26350433-e5d5-0d00-be3f-06420bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5438412291933421,
			"y" : 0.7110983891659931,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.0833333333333333,
				"y" : -0.75,
				"text" : "ANALYSIS"
			},
			"pipeline" : {
				"inner_nodes" : [
					"da350433-e5d5-0d00-be4c-c4f90bf47be3",
					"cf350433-e5d5-0d00-be4b-dab10bf47be3"
				],
				"x" : 0.3938412291933419,
				"y" : 0.7887195902688864,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "31350433-e5d5-0d00-be40-eaa30bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.54,
			"y" : 0.5382887881553787,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.6666666666666667,
				"y" : -1.0,
				"text" : "SYSTEM AWARENESS"
			},
			"pipeline" : {
				"inner_nodes" : [
					"e6350433-e5d5-0d00-be4d-edbb0bf47be3",
					"f1350433-e5d5-0d00-be4e-9ee00bf47be3"
				],
				"x" : 0.36,
				"y" : 0.73,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "7a350433-e5d5-0d00-be43-6fc90bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.72,
			"y" : 0.2598653706417932,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 7.333333333333333,
				"y" : 0.4166666666666667,
				"text" : "Manual inspection"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "83350433-e5d5-0d00-be44-2b950bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.20609475032010244,
			"y" : 0.2598653706417932,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -6.833333333333333,
				"y" : 0.4166666666666667,
				"text" : "Moldable Development"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "8e350433-e5d5-0d00-be45-6c660bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7639166346038613,
			"y" : 0.8549418104578065,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 8.416666666666666,
				"y" : 0.5,
				"text" : "Composable micro tools"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "98350433-e5d5-0d00-be46-c06d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5400754054105196,
			"y" : 0.8549418104578065,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -5.833333333333333,
				"y" : 0.4166666666666667,
				"text" : "Monolithic tools"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "a3350433-e5d5-0d00-be47-72cc0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.32,
			"y" : 0.12,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -5.833333333333333,
				"y" : 0.4166666666666667,
				"text" : "Hypothesis driven"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "ad350433-e5d5-0d00-be48-e4d90bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7,
			"y" : 0.12,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.25,
				"y" : 0.5,
				"text" : "Gut feel driven"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "b8350433-e5d5-0d00-be49-8f340bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.3104799171202765,
			"y" : 0.3941750734716453,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.833333333333333,
				"y" : 0.4166666666666667,
				"text" : "Model centric"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "c3350433-e5d5-0d00-be4a-a52f0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6604799171202766,
			"y" : 0.3941750734716453,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.333333333333333,
				"y" : 0.5,
				"text" : "Data centric"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "cf350433-e5d5-0d00-be4b-dab10bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7787195902688864,
			"y" : 0.7110983891659931,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.666666666666667,
				"y" : 0.5,
				"text" : "Generated views"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "da350433-e5d5-0d00-be4c-c4f90bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.4038412291933419,
			"y" : 0.7110983891659931,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.833333333333333,
				"y" : 0.5,
				"text" : "Manual views"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "e6350433-e5d5-0d00-be4d-edbb0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.72,
			"y" : 0.5382887881553787,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.1666666666666667,
				"y" : 2.5833333333333335,
				"text" : "Belief based"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "f1350433-e5d5-0d00-be4e-9ee00bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.37,
			"y" : 0.5382887881553787,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -0.25,
				"y" : 2.5,
				"text" : "Evidence based"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "73390433-e5d5-0d00-be4f-bf620bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.4,
			"y" : 0.2598653706417932,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -258.3333333333333,
				"y" : -250.41666666666666,
				"text" : "Moldable Development"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : true,
				"source_node" : "83350433-e5d5-0d00-be44-2b950bf47be3"
			}
		},
		{
			"id" : "833a0433-e5d5-0d00-be50-c2590bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.48,
			"y" : 0.12,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -256.3333333333333,
				"y" : -250.41666666666666,
				"text" : "Hypothesis Driven"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : true,
				"source_node" : "a3350433-e5d5-0d00-be47-72cc0bf47be3"
			}
		},
		{
			"id" : "d43a0433-e5d5-0d00-be51-6c5f0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.4875032010243278,
			"y" : 0.3941750734716453,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -256.0,
				"y" : -250.41666666666666,
				"text" : "Model centric"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : true,
				"source_node" : "b8350433-e5d5-0d00-be49-8f340bf47be3"
			}
		},
		{
			"id" : "fd3a0433-e5d5-0d00-be52-e2e90bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"x" : 0.57,
			"y" : 0.5382887881553787,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 63.083333333333336,
				"y" : 2.6666666666666665,
				"text" : "Inspectable"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : true,
				"source_node" : "f1350433-e5d5-0d00-be4e-9ee00bf47be3"
			}
		},
		{
			"id" : "0d84d79b-e7d5-0d00-be61-18a50bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5928074228898879,
			"y" : 0.045851373777632744,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : -1.3333333333333333,
				"text" : "Developers"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "72330433-e5d5-0d00-be39-f20a0bf47be3",
			"to" : "12350433-e5d5-0d00-be3d-327d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "83350433-e5d5-0d00-be44-2b950bf47be3",
			"to" : "b8350433-e5d5-0d00-be49-8f340bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "ad350433-e5d5-0d00-be48-e4d90bf47be3",
			"to" : "7a350433-e5d5-0d00-be43-6fc90bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "da350433-e5d5-0d00-be4c-c4f90bf47be3",
			"to" : "cf350433-e5d5-0d00-be4b-dab10bf47be3",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : true,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "98350433-e5d5-0d00-be46-c06d0bf47be3",
			"to" : "8e350433-e5d5-0d00-be45-6c660bf47be3",
			"color" : {
				"green" : 0.030303030303030304,
				"blue" : 0.030303030303030304,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : true,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "7a350433-e5d5-0d00-be43-6fc90bf47be3",
			"to" : "c3350433-e5d5-0d00-be4a-a52f0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "a3350433-e5d5-0d00-be47-72cc0bf47be3",
			"to" : "83350433-e5d5-0d00-be44-2b950bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "cf350433-e5d5-0d00-be4b-dab10bf47be3",
			"to" : "f1350433-e5d5-0d00-be4e-9ee00bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "da350433-e5d5-0d00-be4c-c4f90bf47be3",
			"to" : "e6350433-e5d5-0d00-be4d-edbb0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "c3350433-e5d5-0d00-be4a-a52f0bf47be3",
			"to" : "e6350433-e5d5-0d00-be4d-edbb0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "b8350433-e5d5-0d00-be49-8f340bf47be3",
			"to" : "f1350433-e5d5-0d00-be4e-9ee00bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "cf350433-e5d5-0d00-be4b-dab10bf47be3",
			"to" : "8e350433-e5d5-0d00-be45-6c660bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "da350433-e5d5-0d00-be4c-c4f90bf47be3",
			"to" : "98350433-e5d5-0d00-be46-c06d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "83350433-e5d5-0d00-be44-2b950bf47be3",
			"to" : "73390433-e5d5-0d00-be4f-bf620bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : true,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "a3350433-e5d5-0d00-be47-72cc0bf47be3",
			"to" : "833a0433-e5d5-0d00-be50-c2590bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : true,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "b8350433-e5d5-0d00-be49-8f340bf47be3",
			"to" : "d43a0433-e5d5-0d00-be51-6c5f0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : true,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "f1350433-e5d5-0d00-be4e-9ee00bf47be3",
			"to" : "fd3a0433-e5d5-0d00-be52-e2e90bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 1.0
			},
			"width" : 1.0,
			"arrow" : true,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "0d84d79b-e7d5-0d00-be61-18a50bf47be3",
			"to" : "12350433-e5d5-0d00-be3d-327d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		}
	]
}'.
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> wardleyMapJsonMoldableDevelopmentWithTension01 [
	^ '{
	"nodes" : [
		{
			"id" : "72330433-e5d5-0d00-be39-f20a0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.4288152791417525,
			"y" : 0.04127582863839715,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.9166666666666666,
				"y" : -1.0833333333333333,
				"text" : "Business people"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "ed340433-e5d5-0d00-be3b-99d80bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.55,
			"y" : 0.2598653706417932,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.16666666666666666,
				"y" : -1.25,
				"text" : "EXPLORATION"
			},
			"pipeline" : {
				"inner_nodes" : [ ],
				"x" : 0.47500000000000003,
				"y" : 0.625,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "05350433-e5d5-0d00-be3c-6bd40bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6400754054105195,
			"y" : 0.8549418104578065,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : -1.0,
				"text" : "DEVELOPER EXPERIENCE"
			},
			"pipeline" : {
				"inner_nodes" : [ ],
				"x" : 0.5650754054105196,
				"y" : 0.7150754054105195,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "12350433-e5d5-0d00-be3d-327d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.51,
			"y" : 0.12,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 7.333333333333333,
				"y" : -0.5,
				"text" : "INVESTIGATION"
			},
			"pipeline" : {
				"inner_nodes" : [ ],
				"x" : 0.435,
				"y" : 0.585,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "1c350433-e5d5-0d00-be3e-af930bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5504799171202766,
			"y" : 0.3941750734716453,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.25,
				"y" : -1.1666666666666667,
				"text" : "CONVERSATION"
			},
			"pipeline" : {
				"inner_nodes" : [ ],
				"x" : 0.47547991712027654,
				"y" : 0.6254799171202765,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "26350433-e5d5-0d00-be3f-06420bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5438412291933421,
			"y" : 0.7110983891659931,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.0833333333333333,
				"y" : -0.75,
				"text" : "ANALYSIS"
			},
			"pipeline" : {
				"inner_nodes" : [ ],
				"x" : 0.4688412291933421,
				"y" : 0.6188412291933421,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "31350433-e5d5-0d00-be40-eaa30bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.54,
			"y" : 0.5382887881553787,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.6666666666666667,
				"y" : -1.0,
				"text" : "SYSTEM AWARENESS"
			},
			"pipeline" : {
				"inner_nodes" : [ ],
				"x" : 0.465,
				"y" : 0.615,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "0d84d79b-e7d5-0d00-be61-18a50bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5928074228898879,
			"y" : 0.045851373777632744,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : -1.3333333333333333,
				"text" : "Developers"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "72330433-e5d5-0d00-be39-f20a0bf47be3",
			"to" : "12350433-e5d5-0d00-be3d-327d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "0d84d79b-e7d5-0d00-be61-18a50bf47be3",
			"to" : "12350433-e5d5-0d00-be3d-327d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "12350433-e5d5-0d00-be3d-327d0bf47be3",
			"to" : "ed340433-e5d5-0d00-be3b-99d80bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "ed340433-e5d5-0d00-be3b-99d80bf47be3",
			"to" : "1c350433-e5d5-0d00-be3e-af930bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "1c350433-e5d5-0d00-be3e-af930bf47be3",
			"to" : "31350433-e5d5-0d00-be40-eaa30bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "31350433-e5d5-0d00-be40-eaa30bf47be3",
			"to" : "26350433-e5d5-0d00-be3f-06420bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "26350433-e5d5-0d00-be3f-06420bf47be3",
			"to" : "05350433-e5d5-0d00-be3c-6bd40bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		}
	]
}'
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> wardleyMapJsonMoldableDevelopmentWithTension02 [
	^ '{
	"nodes" : [
		{
			"id" : "72330433-e5d5-0d00-be39-f20a0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.4288152791417525,
			"y" : 0.04127582863839715,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.9166666666666666,
				"y" : -1.0833333333333333,
				"text" : "Business people"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "ed340433-e5d5-0d00-be3b-99d80bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.55,
			"y" : 0.2598653706417932,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.16666666666666666,
				"y" : -1.25,
				"text" : "EXPLORATION"
			},
			"pipeline" : {
				"inner_nodes" : [
					"7a350433-e5d5-0d00-be43-6fc90bf47be3"
				],
				"x" : 0.54,
				"y" : 0.73,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "05350433-e5d5-0d00-be3c-6bd40bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6400754054105195,
			"y" : 0.8549418104578065,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : -1.0,
				"text" : "DEVELOPER EXPERIENCE"
			},
			"pipeline" : {
				"inner_nodes" : [
					"98350433-e5d5-0d00-be46-c06d0bf47be3"
				],
				"x" : 0.5300754054105196,
				"y" : 0.6500754054105196,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "12350433-e5d5-0d00-be3d-327d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.51,
			"y" : 0.12,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 7.333333333333333,
				"y" : -0.5,
				"text" : "INVESTIGATION"
			},
			"pipeline" : {
				"inner_nodes" : [
					"ad350433-e5d5-0d00-be48-e4d90bf47be3"
				],
				"x" : 0.5,
				"y" : 0.71,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "1c350433-e5d5-0d00-be3e-af930bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5504799171202766,
			"y" : 0.3941750734716453,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.25,
				"y" : -1.1666666666666667,
				"text" : "CONVERSATION"
			},
			"pipeline" : {
				"inner_nodes" : [
					"c3350433-e5d5-0d00-be4a-a52f0bf47be3"
				],
				"x" : 0.5404799171202765,
				"y" : 0.6704799171202767,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "26350433-e5d5-0d00-be3f-06420bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5438412291933421,
			"y" : 0.7110983891659931,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.0833333333333333,
				"y" : -0.75,
				"text" : "ANALYSIS"
			},
			"pipeline" : {
				"inner_nodes" : [
					"da350433-e5d5-0d00-be4c-c4f90bf47be3"
				],
				"x" : 0.3938412291933419,
				"y" : 0.5538412291933421,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "31350433-e5d5-0d00-be40-eaa30bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.54,
			"y" : 0.5382887881553787,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.6666666666666667,
				"y" : -1.0,
				"text" : "SYSTEM AWARENESS"
			},
			"pipeline" : {
				"inner_nodes" : [
					"e6350433-e5d5-0d00-be4d-edbb0bf47be3"
				],
				"x" : 0.53,
				"y" : 0.73,
				"is_visible" : true
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "7a350433-e5d5-0d00-be43-6fc90bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.72,
			"y" : 0.2598653706417932,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 7.333333333333333,
				"y" : 0.4166666666666667,
				"text" : "Manual inspection"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "98350433-e5d5-0d00-be46-c06d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5400754054105196,
			"y" : 0.8549418104578065,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -5.833333333333333,
				"y" : 0.4166666666666667,
				"text" : "Monolithic tools"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "ad350433-e5d5-0d00-be48-e4d90bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.7,
			"y" : 0.12,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 6.25,
				"y" : 0.5,
				"text" : "Gut feel driven"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "c3350433-e5d5-0d00-be4a-a52f0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.6604799171202766,
			"y" : 0.3941750734716453,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 5.333333333333333,
				"y" : 0.5,
				"text" : "Data centric"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "da350433-e5d5-0d00-be4c-c4f90bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.4038412291933419,
			"y" : 0.7110983891659931,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : -4.833333333333333,
				"y" : 0.5,
				"text" : "Manual views"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "e6350433-e5d5-0d00-be4d-edbb0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.72,
			"y" : 0.5382887881553787,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 1.1666666666666667,
				"y" : 2.5833333333333335,
				"text" : "Belief based"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		},
		{
			"id" : "0d84d79b-e7d5-0d00-be61-18a50bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"x" : 0.5928074228898879,
			"y" : 0.045851373777632744,
			"width" : 12,
			"height" : 12,
			"label" : {
				"x" : 0.5,
				"y" : -1.3333333333333333,
				"text" : "Developers"
			},
			"pipeline" : {
				"is_visible" : false
			},
			"evolve" : {
				"is_evolve_target" : false
			}
		}
	],
	"edges" : [
		{
			"from" : "72330433-e5d5-0d00-be39-f20a0bf47be3",
			"to" : "12350433-e5d5-0d00-be3d-327d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "ad350433-e5d5-0d00-be48-e4d90bf47be3",
			"to" : "7a350433-e5d5-0d00-be43-6fc90bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "7a350433-e5d5-0d00-be43-6fc90bf47be3",
			"to" : "c3350433-e5d5-0d00-be4a-a52f0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "da350433-e5d5-0d00-be4c-c4f90bf47be3",
			"to" : "e6350433-e5d5-0d00-be4d-edbb0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "c3350433-e5d5-0d00-be4a-a52f0bf47be3",
			"to" : "e6350433-e5d5-0d00-be4d-edbb0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "da350433-e5d5-0d00-be4c-c4f90bf47be3",
			"to" : "98350433-e5d5-0d00-be46-c06d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		},
		{
			"from" : "0d84d79b-e7d5-0d00-be61-18a50bf47be3",
			"to" : "12350433-e5d5-0d00-be3d-327d0bf47be3",
			"color" : {
				"green" : 0.0,
				"blue" : 0.0,
				"alpha" : 1.0,
				"red" : 0.0
			},
			"width" : 1.0,
			"arrow" : false,
			"label" : {
				"x" : 0.5,
				"y" : 0.5,
				"is_visible" : false,
				"text" : "Edge label"
			}
		}
	]
}'
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> x_slide022GitHubGraphQLSlideFor: aSlide [
	"<gtSlide>"
	^ aSlide lepiterPage
		priority: 22;
		pageNamed: 'Exploring GitHub through GraphQL ' from: 'Glamorous Toolkit Book'
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> x_slide051Docker: aSlide [
	"<gtSlide>"
	<gtSlideNote: 'Docker'>
	^ aSlide element
		priority: 51;
		element: [ | aPager |
			aPager := GtPager
					createWrappedOn: (GtCoder forMethod: LeServerInDockerExamples>>#server).
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkMoldableDevelopmentCraftConf2024Show >> x_slide101ATProto: aSlide [
"	<gtSlide>"
	<gtSlideNote: 'AT Proto'>
	^ aSlide lepiterPage
		priority: 101;
		pageNamed: 'Browsing a BlueSky user from a dedicated snippet' from: 'gt4atproto-lepiter'
]
