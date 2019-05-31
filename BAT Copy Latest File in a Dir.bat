::List all files of a specified extension the directory (ignore extension in output)

@ECHO OFF
::FOR /F %%I IN ('DIR "\\src-dir\file*.ext" /B /O:-D') DO XCOPY "\\src-dir\%%I" "\\dst-dir\filename.ext" /D /V /Y
::FOR /F %%I IN ('DIR ".\*.txt" /B /O:-D') DO XCOPY ".\%%I" ".\latest copy.txt" /D /V /Y

SET dirStr=.
SET extStr=txt
SET newFileName=new file
::FOR /F %%I IN ('DIR "%dirStr%\*.%extStr%" /B /O:-D') DO ECHO %%I

FOR /F %%I IN ('DIR "%dirStr%\*.%extStr%" /B /O:-D') DO XCOPY "%dirStr%\%%I.%extStr%" "%dirStr%\%newFileName%.%extStr%" /D /V /Y


::cls
PAUSE
