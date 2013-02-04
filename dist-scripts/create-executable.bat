@ECHO OFF

REM Parameters:
REM %1 - name of the image file 
REM %2 - name of the executable

IF not "%3"=="" (
	echo Usage: "%0" {image name} {executable name} {icon file}
	goto :eof
	)

set ResHacker="C:\Program Files\Resource Hacker\ResHacker.exe"
set Visual="C:\Program Files\Cincom\vw7.8.1nc\bin\win\visual.exe"

echo "executing reshacker.exe..........."
%ResHacker% -addoverwrite %Visual%, %2, %1,332,332,


:eof

