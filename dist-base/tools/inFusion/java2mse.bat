@echo off
echo Starting Java2MSE Exporter...
@echo off

set JAVA_HOME=.\jre1502

@echo off

set LOCALCLASSPATH=.\jre1502\lib\rt.jar;.\jre1502\lib\i386;.\res\;.\lib\liquidlnf.jar;.\lib\intellij.jar;.\lib\jgraph.jar;.\lib\jgraphmicropad.jar;.\lib\java2html.jar;.\lib\recoder.jar;.\lib\org-openide-awt.jar;.\lib\org-openide-util.jar;.\lib\swing-layout-1.0.3.jar;

"%JAVA_HOME%\bin\java"  -Dsun.java2d.noddraw=true -Xms256m -Xmx1024m -classpath %LOCALCLASSPATH% com.intooitus.infusion.util.Java2MSE %1 %2 %3 

