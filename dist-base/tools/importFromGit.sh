#/bin/bash

# Script to import system from git
# Mircea Lungu
# January, 2013

# $1 the name of the system 
# $2 the url of the project 
SYSTEM_NAME=$1
URL=$2

if [ "$#" -ne 2 ]; then
	echo "Usage: $0 {system name} {git url}"
	exit 1
fi 

# Create the systems and models dirs if they don't exist already
if [ ! -d ../systems ]; then
	mkdir ../systems
fi 

if [ ! -d ../models ]; then
	mkdir ../models
fi 


if [ ! -d ../systems/$SYSTEM_NAME ]; then
	cd ../systems
	git clone $URL $SYSTEM_NAME
	cd ../tools
fi 

cd inFusion
./java2mse.sh ../../systems/$SYSTEM_NAME famix21 ../../models/$SYSTEM_NAME.mse
