@ECHO OFF

REM Parameters:
REM %1 - name of the image file 

IF not "%2"=="" (
	echo Usage: "%0" {image name} 
	goto :eof
	)

"C:\Program Files\ResourceHacker\ResHacker.exe" -addoverwrite "C:\Program Files\Cincom\vw7.8.1nc\bin\win\visual.exe", "%1".exe, "%1".im, 332, 332,




:eof

