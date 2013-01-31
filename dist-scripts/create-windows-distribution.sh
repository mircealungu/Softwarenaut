#/bin/bash


if [ "$#" -ne 1 ]; then
	echo "Usage: $0 {base image name}"
	exit 1
fi 

# This script assumes that there exists a VirtualBox machine
# which contains an installation of: VisualWorks + ResHacker
# and a username lulu with the password lulu
# and a create-executable.bat file which will 
TARGET=/Users/Shared/softwarenaut
VBMachineName="Windows-WithVW"
user=admin
pass=admin
#create_executable='/C "C:\Documents and Settings\lulu\My Documents\VisualWorks Projects\Softwarenaut\create-executable.bat"'
create_executable='/C G:\softwarenaut\create-executable.bat G:\softwarenaut\softwarenaut.im G:\softwarenaut\Softwarenaut.exe'


# Start the Windows Machine
VBoxManage startvm $VBMachineName

# Create the Shared/softwarenaut dir if it does not exist
mkdir $TARGET
rm -rf $TARGET/*

echo "copying the softwarenaut image..."
cp -r ../dist-base/$1.im $TARGET/softwarenaut.im
cp -r ../dist-base/$1.cha $TARGET/softwarenaut.cha

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

cp $TARGET/Softwarenaut.exe ../dist-win/

echo "copying the tools..."
cp -r ../dist-base/tools ../dist-win/tools

#rm -rf /Users/Shared/Softwarenaut.exe




