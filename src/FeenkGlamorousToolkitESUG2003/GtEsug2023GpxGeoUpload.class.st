Class {
	#name : #GtEsug2023GpxGeoUpload,
	#superclass : #Object,
	#instVars : [
		'filename',
		'username',
		'session'
	],
	#category : #'FeenkGlamorousToolkitESUG2003-Akg'
}

{ #category : #accessing }
GtEsug2023GpxGeoUpload >> filename [
	^ filename
]

{ #category : #accessing }
GtEsug2023GpxGeoUpload >> filename: anObject [
	filename := anObject
]

{ #category : #accessing }
GtEsug2023GpxGeoUpload >> getPoints [
	"Answer an Array of timestamp (String) -> coordinate (Point)"
	| dom segments |

	dom := filename asFileReference readStreamDo: [ :stream |
		XMLDOMParser parse: stream ].
	segments := dom // 'gpx' // 'trk' // 'trkseg'.
	^ (segments flatCollect: [ :segment | 
		segment // 'trkpt' collect: [ :trkpt | | point timestamp |
			timestamp := (trkpt allElementsNamed: 'time') first contentNodes first string.
			point := (trkpt attributeAt: 'lon') asNumber @ (trkpt attributeAt: 'lat') asNumber.
			timestamp -> point ] ])
				asArray
]

{ #category : #accessing }
GtEsug2023GpxGeoUpload >> session [

	^ session ifNil: [ session := GtGemStoneSessionRegistry default defaultSession ]
]

{ #category : #accessing }
GtEsug2023GpxGeoUpload >> trajectory [
	| records trajectory |

	self assert: username isString.
	self assert: filename isNotNil.
	records := self getPoints collect: [ :each |
		GtRmGeoGpsRecord new
			timestamp: (DateAndTime readFromString: each key);
			latitude: each value y;
			longitude: each value x ].
	trajectory := GtRmGeoGpsTrajectory new
		targetFolderName: filename asFileReference basename.
	records do: [ :each | trajectory addRecord: each ].
	^ trajectory.
]

{ #category : #accessing }
GtEsug2023GpxGeoUpload >> upload [
	| geoLife |

	self assert: username isString.
	self assert: filename isNotNil.
	geoLife := self session evaluateAndWait: 'GtRmGeolife defaultInstance'.
	geoLife ensureUserWithId: username.
]

{ #category : #accessing }
GtEsug2023GpxGeoUpload >> uploadData [
	| geoLife user trajectory |

	self assert: self session isNotNil
		description: 'Default GemStone session must be set'.
	geoLife := self session evaluateAndWait: 'GtRmGeolife defaultInstance'.
	user := geoLife ensureUserWithId: username.
	trajectory := self trajectory.
	self halt.
	user addTrajectory: trajectory.
	^ user
]

{ #category : #accessing }
GtEsug2023GpxGeoUpload >> username [
	^ username
]

{ #category : #accessing }
GtEsug2023GpxGeoUpload >> username: anObject [
	username := anObject
]
