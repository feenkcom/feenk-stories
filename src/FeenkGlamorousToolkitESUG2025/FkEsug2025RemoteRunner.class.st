Class {
	#name : #FkEsug2025RemoteRunner,
	#superclass : #Object,
	#traits : 'TDatabaseHolder + TGtSlideShow',
	#classTraits : 'TDatabaseHolder classTrait + TGtSlideShow classTrait',
	#category : #FeenkGlamorousToolkitESUG2025
}

{ #category : #slides }
FkEsug2025RemoteRunner >> slide010Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Andrei Chis. I work at feenk, and today I want to talk wotking with remote images.'>
	
	^ aSlide title
		priority: 1;
		titleWithFormat: ('Working with thousands of images' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 14  to: 14 + 'thousands' size) bold]; yourself);
		subtitleWithFormat: ('andrei.chis@feenk.com' asRopedText 
			fontSize: 40;
			glamorousRegularFont)
]

{ #category : #slides }
FkEsug2025RemoteRunner >> slide020RemoteRunnerOverview: aSlide [
	<gtSlide>
	<gtSlideNote: ''>
	
	^ aSlide labelAndElement
		priority: 2;
		newFadedText: 'Remote Runner Overview';
		element: [ 
			| aContainer |
			aContainer := BrFrame new
				padding: (BlInsets all: 50);
				background: Color white;
				fitContent.
	
			aContainer addChild: ((GtFileUtility 
				svgElementFromFileReference: FileLocator gtResource
					/ 'feenkcom' / 'feenk-stories' / 'data' / 'esug2025'
					/ 'RemoteRunnerOverview.svg')
					constraintsDo: [ :c |
						c vertical exact: 400.
						c horizontal exact: 900. ]).
			BrHorizontalPane new 
				matchParent;
				alignCenter;
				addChild: aContainer asScalableElement ]
]

{ #category : #slides }
FkEsug2025RemoteRunner >> slide030RemoteRunnerUseCases: aSlide [
	<gtSlide>
	<gtSlideNote: ''>
	
	^ aSlide labelAndElement
		priority: 3;
		element: [ 
			(FileLocator gtResource
				/ 'feenkcom' / 'feenk-stories' / 'data' / 'esug2025'
				/ 'RunnerUsecasesOverview.png') 
					gtFigureFor:  GtPhlowView empty ]
]

{ #category : #slides }
FkEsug2025RemoteRunner >> slide040RemoteCluster: aSlide [
	<gtSlide>
	<gtSlideNote: ''>
	
	^ aSlide labelAndElement
		priority: 4;
		element: [ 
			(FileLocator gtResource
				/ 'feenkcom' / 'feenk-stories' / 'data' / 'esug2025'
				/ 'Cluster-Overview.png') 
					gtFigureFor:  GtPhlowView empty ]
]

{ #category : #slides }
FkEsug2025RemoteRunner >> slide050RemoteClusterScen: aSlide [
	<gtSlide>
	<gtSlideNote: ''>
	
	^ aSlide labelAndElement
		priority: 5;
		element: [ 
			(FileLocator gtResource
				/ 'feenkcom' / 'feenk-stories' / 'data' / 'esug2025'
				/ 'Clusyer-Overview-Scene.png') 
					gtFigureFor:  GtPhlowView empty ]
]

{ #category : #slides }
FkEsug2025RemoteRunner >> slide99End: aSlide [
	<gtSlide>
	<gtSlideNote: ''>
	
	^ aSlide title
		priority: 999;
		titleWithFormat: ('gtoolkit.com' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			bold; yourself)
]
