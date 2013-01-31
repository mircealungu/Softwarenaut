@ECHO OFF

REM Parameters:
REM %1 - name of the image file 
REM %2 - name of the executable

IF not "%3"=="" (
	echo Usage: "%0" {image name} {executable name}
	goto :eof
	)

echo "executing reshacker.exe..."
"C:\Program Files\Resource Hacker\ResHacker.exe" -addoverwrite "C:\Program Files\Cincom\vw7.8.1nc\bin\win\visual.exe", %2, %1,332,332,
echo "C:\Program Files\Resource Hacker\ResHacker.exe" -addoverwrite "C:\Program Files\Cincom\vw7.8.1nc\bin\win\visual.exe", %2, %1,332,332,




:eof

