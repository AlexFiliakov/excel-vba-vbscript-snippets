::List all files of a specified extension the directory (ignore extension in output)

@ECHO OFF

SET dirStr=.
SET extStr=txt

::if you want Nth element, iterate an integer until desired pos then GOTO

FOR /F %%I IN ('DIR "%dirStr%\*.%extStr%" /B /O:-D') DO (
	SET topFile=%%I
	GOTO KeepGoing
)

:KeepGoing
echo %topFile%

PAUSE
