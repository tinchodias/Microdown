"This is temporal until we fix the Pharo10 build"
IceRepository registry 
	detect: [ :each | each name = 'Microdown' ]
	ifFound: [ :aRepository | aRepository forget ].
"This, however, needs to stay :)"
#( 'BaselineOfMicrodownDev' 'BaselineOfMicrodown' ) do: [ :each | 
	(RPackageOrganizer default packageNamed: each ifAbsent: [ nil ]) 
		ifNotNil: [ :aPackage | aPackage removeFromSystem ] ]
