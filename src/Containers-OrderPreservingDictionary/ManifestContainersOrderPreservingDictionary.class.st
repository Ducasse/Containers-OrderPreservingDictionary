"
I contain ordered dictionaries. Some of them allow default values, some raise an error if you try to access keys that don't exist. Some of them use = for comparison while others use ==. Some can use any Object as a key while others use Strings only. 
"
Class {
	#name : #ManifestContainersOrderPreservingDictionary,
	#superclass : #PackageManifest,
	#category : #'Containers-OrderPreservingDictionary-Manifest'
}
