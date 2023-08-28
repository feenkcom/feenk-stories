Class {
	#name : #FkGt10ESUG2023Show,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkGlamorousToolkitESUG2003
}

{ #category : #accessing }
FkGt10ESUG2023Show >> slide001Title: aSlide [
	<gtSlide>
	<text: 'My name is Tudor Girba. I am the CEO of feenk and today I want to talk about Glamorous Toolkit.'>
	^ aSlide title
		priority: 1;
		titleWithFormat: ('glamoroustoolkit' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'glamorous' size + 1 to: t size) bold]; yourself);
		subtitleWithFormat: ('@girba' asRopedText 
			fontSize: 40;
			glamorousRegularFont;
			bold)
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide002Title: aSlide [
	<gtSlide>
	<text: 'Specifically, I want to talk about Glamorous Toolkit v1.0 which has been 6 years in the making. What is Glamorous Toolkit? Different people look at it and see different things. Let''s go through these.'>
	^ aSlide title
		priority: 2;
		titleWithFormat: ('glamoroustoolkit' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'glamorous' size + 1 to: t size) bold]; yourself);
		subtitleWithFormat: ('v1.0' asRopedText 
			fontSize: 60;
			glamorousRegularFont;"
			foreground: Color transparent;"
			bold)
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide011Title: aSlide [
	<gtSlide>
	<text: 'Pharo development.'>
	^ aSlide element
		priority: 11;
		element: [ | aPager |
			aPager := GtPager
					createWrappedOn: (GtCoder forMethod: GtLudoGame >> #moveTokenNamed:).
			aPager maximized.
			aPager addAptitude: BrShadowAptitude new beLarge ]
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide021Title: aSlide [
	<gtSlide>
	<text: 'Knowledge management. System documentation.'>
	^ aSlide lepiterPage
		priority: 21;
		pageNamed: 'Documenting the domain: the Ludo game case study' from: 'Glamorous Toolkit Book';
		maximized: true
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide022Title: aSlide [
	<gtSlide>
	<text: 'Knowledge management. System documentation.'>
	^ aSlide lepiterPage
		priority: 21;
		pageNamed: 'ESUG 2023 BlueSky thread' from: 'default';
		maximized: true
]

{ #category : #accessing }
FkGt10ESUG2023Show >> slide031Title: aSlide [
	<gtSlide>
	<text: 'API browser'>
	^ aSlide lepiterPage
		priority: 21;
		pageNamed: 'Browsing a user from a dedicated snippet' from: 'gt4atproto-lepiter';
		maximized: true
]
