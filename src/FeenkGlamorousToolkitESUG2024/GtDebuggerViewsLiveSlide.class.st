Class {
	#name : #GtDebuggerViewsLiveSlide,
	#superclass : #GtLiveSlide,
	#instVars : [
		'slideType'
	],
	#category : #FeenkGlamorousToolkitESUG2024
}

{ #category : #'api - instantiation' }
GtDebuggerViewsLiveSlide >> create [
	^ slideType.
]

{ #category : #accessing }
GtDebuggerViewsLiveSlide >> customDebuggers [
	slideType := GtCustomDebuggersLiveSlide new.
]

{ #category : #accessing }
GtDebuggerViewsLiveSlide >> languageDebuggers [
	slideType := GtLanguageDebuggersLiveSlide new.
]

{ #category : #accessing }
GtDebuggerViewsLiveSlide >> rawDebuggers [
	slideType := GtRawDebuggersLiveSlide new.
]
