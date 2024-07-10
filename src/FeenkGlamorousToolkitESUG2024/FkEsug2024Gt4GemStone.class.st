Class {
	#name : #FkEsug2024Gt4GemStone,
	#superclass : #DatabaseHolder,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #FeenkGlamorousToolkitESUG2024
}

{ #category : #accessing }
FkEsug2024Gt4GemStone >> slide010Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Andrei Chis. I work at feenk, and today I want to talk about how gt4gemstone.'>
	
	^ aSlide title
		priority: 1;
		titleWithFormat: ('gt4gemstone' asRopedText 
			fontSize: 80;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 'gt4' size  + 1 to: 'gt4gemstone' size) bold]; yourself);
		subtitleWithFormat: ('andrei.chis@feenk.com' asRopedText 
			fontSize: 40;
			glamorousRegularFont)
]

{ #category : #accessing }
FkEsug2024Gt4GemStone >> slide99End: aSlide [
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
