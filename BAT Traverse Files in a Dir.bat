::List all files of a specified extension the directory (ignore extension in output)

@ECHO OFF

SET dirStr=.
SET extStr=txt
FOR /F %%I IN ('DIR "%dirStr%\*.%extStr%" /B /O:-D') DO (
	ECHO %%I
)

PAUSE
