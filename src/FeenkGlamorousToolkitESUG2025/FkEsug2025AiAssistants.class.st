Class {
	#name : #FkEsug2025AiAssistants,
	#superclass : #Object,
	#traits : 'TDatabaseHolder + TGtSlideShow',
	#classTraits : 'TDatabaseHolder classTrait + TGtSlideShow classTrait',
	#category : #FeenkGlamorousToolkitESUG2025
}

{ #category : #pages }
FkEsug2025AiAssistants >> esugUrlPage [
	<lePage>
	<gtExample>
	<noTest>
	
	^ (LePage named: 'Web Page')
	addSnippet: (LePharoSnippet new
			code: 'znUrl := ZnUrl fromString: ''https://esug.org/2024-Conference/call2024.html''');
	addSnippet: (LePharoSnippet new
			code: 'WebBrowser openOn: znUrl');
	addSnippet: (LeTextSnippet new
			string: '[https://youtu.be/lqogvp1dGpk](https://youtu.be/lqogvp1dGpk)');
	yourself
]

{ #category : #slides }
FkEsug2025AiAssistants >> slide010Title: aSlide [
	<gtSlide>
	<gtSlideNote: 'My name is Andrei Chis. I work at feenk, and today I want to about working with AI assistants.'>
	
	^ aSlide title
		priority: 1;
		titleWithFormat: ('AI assistants in Glamorous Toolkit' asRopedText 
			fontSize: 70;
			glamorousRegularFont;
			thin;
			in: [:t | (t from: 1  to: 'AI assistants' size) bold]; yourself);
		subtitleWithFormat: ('andrei.chis@feenk.com' asRopedText 
			fontSize: 40;
			glamorousRegularFont)
]
