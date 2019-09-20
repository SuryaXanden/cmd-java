@echo off
TITLE JavaPC
color 0a
:top
CLS
echo: ____________________________
echo: Press i for Instructions...
echo: 1.create new / open  .java file
echo: 2.compile .java file
echo: 3.execute .class file
echo: 4.quit the program
echo: ____________________________

SET /P Choice="Enter your choice: "
IF /I '%Choice%'=='1' GOTO 1
IF /I '%Choice%'=='2' GOTO 2
IF /I '%Choice%'=='3' GOTO 3
IF /I '%Choice%'=='4' GOTO 4
IF /I '%Choice%'=='I' GOTO i
IF /I '%Choice%'=='i' GOTO i
set /p Name=Enter the class name:
notepad %Name%.java
GOTO top

:4
EXIT

:1
set /p Name=Enter the class name:
notepad %Name%.java
set path=%PATH%;"C:\jdk\bin"
goto top

:2
javac %Name%.java
Echo:
Echo: Compiled.
pause
goto top

:3
java %Name%
Echo:
Echo: Executed.
pause
goto top

:i
echo: Instructions:--
echo: * DO NOT TAMPER THE CODING!.
echo: * The order must be
echo:   followed form 1 to 3.
echo: * Press 4 to quit at any time.
pause
goto top
