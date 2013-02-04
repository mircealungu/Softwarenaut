#/bin/bash


if [ "$#" -ne 2 ]; then
	echo "Usage: $0 {image-name} {version}"
	exit 1
fi 

# This script assumes that there exists a VirtualBox machine
# which contains an installation of: VisualWorks + ResHacker
# and a username lulu with the password lulu
# and a create-executable.bat file which will 
ver=$2
TARGET=/Users/Shared/softwarenaut
VBMachineName="Windows-WithVW"
user=admin
pass=admin
#create_executable='/C "C:\Documents and Settings\lulu\My Documents\VisualWorks Projects\Softwarenaut\create-executable.bat"'
create_executable='/C G:\softwarenaut\create-executable.bat G:\softwarenaut\softwarenaut.im G:\softwarenaut\Softwarenaut.exe'
distwin=../dist-win
zipfile=$distwin/Softwarenaut-Win.zip


# Start the Windows Machine
VBoxManage startvm $VBMachineName

# Create the Shared/softwarenaut dir if it does not exist
mkdir $TARGET
rm -rf $TARGET/*

echo "copying the softwarenaut image..."
cp -r ../dist-base/$1.im $TARGET/softwarenaut.im
cp -r ../dist-base/$1.cha $TARGET/softwarenaut.cha

echo "copying the icon file..."
cp -r ../dist-base/Softwarenaut.ico $TARGET/Softwarenaut.ico

echo "copying the script to create the executable"
cp -r ../dist-scripts/create-executable.bat $TARGET


echo "getting ready to create executable "

	echo VBoxManage guestcontrol exec $VBMachineName cmd.exe --arguments  $create_executable --username $user --password $pass --wait-for stdout --verbose
VBoxManage guestcontrol exec $VBMachineName cmd.exe --arguments  $create_executable --username $user --password $pass --wait-for stdout --verbose

until [ $? == 0 ]; do
	echo VBoxManage guestcontrol exec $VBMachineName cmd.exe --arguments  $create_executable --username $user --password $pass --wait-for stdout --verbose
	VBoxManage guestcontrol exec $VBMachineName cmd.exe --arguments  $create_executable --username $user --password $pass --wait-for stdout --verbose
	sleep 10
done

rm -rf $distwin/*
mkdir $distwin/Softwarenaut
cp $TARGET/Softwarenaut.exe $distwin/Softwarenaut/
cp $TARGET/softwarenaut.cha $distwin/Softwarenaut/

echo "copying the tools..."
cp -r ../dist-base/tools $distwin/Softwarenaut/tools

(cd $distwin; zip -r $zipfile Softwarenaut)

read -p "Do you want to copy the archive to yogi? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # do dangerous stuff
    echo
	echo "copying the archive to yogi..."
	scp $zipfile scg.unibe.ch:softwarenaut/Softwarenaut-Win.zip
fi
echo


#rm -rf /Users/Shared/Softwarenaut.exe




