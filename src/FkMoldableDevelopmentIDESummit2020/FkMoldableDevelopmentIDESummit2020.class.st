Class {
	#name : #FkMoldableDevelopmentIDESummit2020,
	#superclass : #Object,
	#category : #FkMoldableDevelopmentIDESummit2020
}

{ #category : #accessing }
FkMoldableDevelopmentIDESummit2020 >> allViewsExampleSlideFor: aSlide [
	<gtSlide>
	^ (aSlide custom: GtAllViewsLiveSlide new)
		priority: 11
]

{ #category : #'as yet unclassified' }
FkMoldableDevelopmentIDESummit2020 >> anyBoundarySlideFor: aSlide [
	<gtSlide>
	^ aSlide text
		priority: 16;
		newTextWithFormat: ('any boundary in software is arbitrary.' asRopedText glamorousRegularFont fontSize: 40; bold)
]

{ #category : #'as yet unclassified' }
FkMoldableDevelopmentIDESummit2020 >> assessmentCost1SlideFor: aSlide [
	<gtSlide>
	"Rename this method to be more representative for your slide"
	^ aSlide filePicture
		fileReference: (GtResourcesUtility default resourceAtPath: Path * 'feenkcom' / 'gtoolkit-demos' / 'doc'/ 'moldable-development' / '50percent-1.png');
		priority: 2.
]

{ #category : #'as yet unclassified' }
FkMoldableDevelopmentIDESummit2020 >> assessmentCost2SlideFor: aSlide [
	<gtSlide>
	"Rename this method to be more representative for your slide"
	^ aSlide filePicture
		fileReference: (GtResourcesUtility default resourceAtPath: Path * 'feenkcom' / 'gtoolkit-demos' / 'doc'/ 'moldable-development' / '50percent-2.png');
		priority: 3.
]

{ #category : #'as yet unclassified' }
FkMoldableDevelopmentIDESummit2020 >> assessmentCost3SlideFor: aSlide [
	<gtSlide>
	^ aSlide filePicture
		fileReference: (GtResourcesUtility default resourceAtPath: Path * 'feenkcom' / 'gtoolkit-demos' / 'doc'/ 'moldable-development' / '50percent-3.png');
		priority: 4.
]

{ #category : #'as yet unclassified' }
FkMoldableDevelopmentIDESummit2020 >> customViewsExampleSlideFor: aSlide [
	<gtSlide>
	^ (aSlide custom: GtCustomViewsLiveSlide new)
		priority: 7
]

{ #category : #accessing }
FkMoldableDevelopmentIDESummit2020 >> environmentIsALanguageSlideFor: aSlide [
	<gtSlide>
	"Rename this method to be more representative for your slide"
	^ aSlide text
		priority: 42;
		newTextWithFormat: ('the environment is a language
made out of visual and interactive operators
that can be combined in many ways.' asRopedText glamorousRegularFont fontSize: 40; bold)
]

{ #category : #accessing }
FkMoldableDevelopmentIDESummit2020 >> feenkSlideFor: aSlide [
	<gtSlide>
	^ aSlide element
		priority: 110;
		element: [| container form |
				form := PNGReadWriter formFromFileNamed: (GtResourceReference
						path: Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'feenk.png') fullName.
BlElement new 
			constraintsDo: [ :c |
				c horizontal matchParent.
				c vertical matchParent ];
			layout: BlLinearLayout horizontal;
				addChild: (
					BlElement new
						constraintsDo: [ :c |
							c horizontal matchParent.
							c vertical fitContent.
							c linear vertical alignCenter ];
						layout: BlLinearLayout vertical;
						addChild: (BrVerticalPane new 
							constraintsDo: [ :c |
								c linear horizontal alignCenter ];
							addChild: (form asElement asScalableElement maxScale: 0.2; constraintsDo: [:c | c horizontal matchParent. c vertical matchParent]); hExact: 400; vExact: 200);
						addChild: (BlTextElement new 
							constraintsDo: [ :c |
								c linear horizontal alignCenter ];
							text: (('we make your systems explainable.' asRopedText glamorousRegularFont bold fontSize: 50))))
				]
]

{ #category : #accessing }
FkMoldableDevelopmentIDESummit2020 >> glamorousToolkSlideFor: aSlide [
	<gtSlide>
	^ aSlide title
		priority: 10;
		titleWithFormat: ('glamoroustoolkit' asRopedText 		
			glamorousRegularFont 
			fontSize: 100; 
			thin; 
			in: [:t | (t from: 'glamorous' size + 1 to: t size) bold]; yourself);
		subtitleWithFormat: ('the moldable development environment.' asRopedText glamorousRegularFont bold fontSize: 50)
]

{ #category : #accessing }
FkMoldableDevelopmentIDESummit2020 >> gtViewsAndExamplesMapSlideFor: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: 50;
		newTextWithFormat: ('moldability is a pervasive need.' asRopedText glamorousRegularFont bold fontSize: 40);
		element: [GtTour new treemapWithViewsAndExamples]
]

{ #category : #accessing }
FkMoldableDevelopmentIDESummit2020 >> gtWorldForSpotterSlideFor: aSlide [
	<gtSlide>
	^ aSlide element
		priority: 49;
		element: [
			BrVerticalPane new
				matchParent;
				addChild: (
			GtWorldElement new
					background: Color white;
					margin: (BlInsets all: 10);	
					look: BrShadowLook;				
				yourself)]
]

{ #category : #slides }
FkMoldableDevelopmentIDESummit2020 >> jsAnalysiFor: aSlide [
	<gtSlide>
	"Rename this method to be more representative for your slide"
	^ aSlide playground
		priority: 17;
		snippets: {'baseDir := ''/Users/girba/Work/Code/Zooniverse/mobile'' asFileReference.

model := (GtReactImporter new 
	parserClass: JSXParser; 
	importDirectory: baseDir) model.'}
]

{ #category : #slides }
FkMoldableDevelopmentIDESummit2020 >> jsExplanatioFor: aSlide [
	<gtSlide>
	"Rename this method to be more representative for your slide"
	^ aSlide element
		priority: 18;
		element: [
			GtTour new explainerOnReactJSComponents padding: (BlInsets all: 180)]
]

{ #category : #accessing }
FkMoldableDevelopmentIDESummit2020 >> noDominantPerspectiveSlideFor: aSlide [
	<gtSlide>
	^ aSlide text
		priority: 8;
		notes: 'there is no single dominant perspective on any aspect of software. Now, let''s see what that means in practice';
		newTextWithFormat: ('there is no single dominant perspective
on any aspect of software.' asRopedText glamorousRegularFont; bold; fontSize: 40)
]

{ #category : #slides }
FkMoldableDevelopmentIDESummit2020 >> querySlidFor: aSlide [
	<gtSlide>
	"Rename this method to be more representative for your slide"
	^ aSlide playground
		priority: 12;
		snippets: {'#gtView gtPragmas'}
]

{ #category : #'as yet unclassified' }
FkMoldableDevelopmentIDESummit2020 >> rawViewsExampleSlideFor: aSlide [
	<gtSlide>
	^ (aSlide custom: GtRawViewsLiveSlide new)
		priority: 6
]

{ #category : #accessing }
FkMoldableDevelopmentIDESummit2020 >> titleSlideFor: aSlide [
	<gtSlide>
	^ aSlide title
		priority: 1;
		titleWithFormat: ('moldabledevelopment' asRopedText 		
			glamorousRegularFont 
			fontSize: 100; 
			thin; 
			in: [:t | (t from: 'moldable' size + 1 to: t size) bold]; yourself);
		subtitleWithFormat: ('@girba' asRopedText 		
			glamorousRegularFont 
			fontSize: 50; 
			bold; yourself)
]
