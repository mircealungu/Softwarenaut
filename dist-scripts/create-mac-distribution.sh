#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Usage: $0 {image-name} {version}"
	exit $E_BADARGS
fi

distmac="../dist-mac"
ver=$2
app="Softwarenaut.app"
appver="Softwarenaut.$ver.app"
resources=$distmac/$appver/"Contents/Resources"
zipfile=$distmac/Softwarenaut-OSX.zip

# clean target dir
if [ -d $distmac ]
then
	echo "cleaning up the $distmac folder..."
	rm -rf $distmac/*
else
	echo "creating the $distmac folder..."
	mkdir $distmac
fi

echo "copying the app skeleton..."
cp -R ../dist-base/$app $distmac/$appver

echo "copy the images inside the app skeleton..."
cp $1.im $resources/resource.im
cp $1.cha $resources/resource.cha

echo "copying the tools dir..."
cp -r ../dist-base/tools $resources/tools

zip -r $zipfile $distmac/$appver 

echo "copying the archive to yogi..."
scp $zipfile scg.unibe.ch:softwarenaut/Softwarenaut-OSX.zip
