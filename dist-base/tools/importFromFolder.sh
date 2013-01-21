#/bin/bash
# $1 = system name
# $2 = source folder

# $1 the name of the project
# $2 the folder of the project


if [ "$#" -ne 2 ]; then
	echo "Usage: $0 {system name} {folder}"
	exit 1
fi 

# Create the systems and models dirs if they don't exist already
if [ ! -d ../systems ]; then
	mkdir ../systems
fi 

if [ ! -d ../models ]; then
	mkdir ../models
fi 

cd inFusion
./java2mse.sh $2 famix21 ../../models/$1.mse
