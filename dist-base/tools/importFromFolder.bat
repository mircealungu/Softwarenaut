@ECHO OFF

REM Script assumes it will be run from the tools folder

REM Parameters:
REM %1 - system name
REM %2 - source folder

IF not "%3"=="" (
	echo Usage: "%0" {system name} {source folder} 
	goto :eof
	)


REM Create the systems and models folders if needed
IF not exist ..\systems\ (mkdir systems && echo "systems dir created")
IF not exist ..\models\ (mkdir models && echo "models dir created")


echo "Importing %1 from folder %2"

cd inFusion
java2mse.bat "%2" "famix21" "..\..\models\%1.mse"
cd ..\..


:eof

