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
			fontSize: 60;
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
		titleWithFormat: ('glamoroustoolkit v1.0' asRopedText 
			fontSize: 60;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'glamorous' size + 1 to: t size) bold]; yourself);
		subtitleWithFormat: ('@girba' asRopedText 
			fontSize: 40;
			glamorousRegularFont;
			foreground: Color transparent;
			bold)
]
