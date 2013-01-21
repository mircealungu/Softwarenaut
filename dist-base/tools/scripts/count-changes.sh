#/bin/bash

cd $1
find . -name "*.java"
for FILENAME in `find . -name "*.java"`
do
	echo `basename $FILENAME` `git log --stat $FILENAME | grep changed | wc -l`
done
