#/bin/bash

#VBoxManage startvm "PC-DOI"
cp -R ../distribution-base/* ../distribution-win
cp ../distribution-base/softwarenaut.im ../distribution-base/softwarenaut.cha /Users/Shared

VBoxManage guestcontrol exec "PC-DOI" cmd.exe --arguments '/C "C:\Documents and Settings\lulu\My Documents\VisualWorks Projects\Softwarenaut\create-executable.bat"' --username lulu --password lulu --wait-for stdout --verbose

cp /Users/Shared/Softwarenaut.exe ../distribution-win/
rm -rf /Users/Shared/softwarenaut.*
rm -rf /Users/Shared/Softwarenaut.exe




