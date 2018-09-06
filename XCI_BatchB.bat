@ECHO OFF
color 03
setlocal enabledelayedexpansion

::Set checks
set /a eNXT=0
set /a XCIB=0
set /a p_exist=0

::Checks if NX-Trimmer exist
if exist %~dp0\NX-Trimmer.bat set /a eNXT=1
if exist %~dp0\ztools\NX-Trimmer.bat set /a eNXT=1

::Checks if XCI_Builder exist
if exist %~dp0\XCI_Builder.bat set /a XCIB=1
if exist %~dp0\ztools\XCI_Builder.bat set /a p_exist=1

::Checks if any of them exist
if exist %~dp0\NX-Trimmer.bat set /a p_exist=1
if exist %~dp0\ztools\NX-Trimmer.bat set /a p_exist=1
if exist %~dp0\XCI_Builder.bat set /a p_exist=1
if exist %~dp0\ztools\XCI_Builder.bat set /a XCIB=1

::If no program exist go to exit
if %p_exist% EQU 0 ( goto noprograms )

::Set route for programs depending on it's location
set rutaNXT=%~dp0\NX-Trimmer.bat
set rutaXCIB=%~dp0\XCI_Builder.bat

if not exist %~dp0\NX-Trimmer.bat ( set rutaNXT=%~dp0\ztools\NX-Trimmer.bat ) 
if not exist %~dp0\XCI_Builder.bat ( set rutaXCIB=%~dp0\ztools\XCI_Builder.bat )

::Check if user is dragging a folder or a file

if exist "%~dp1%~n1\*.xci" goto folder
if exist "%~dp1%~n1\*.nsp" goto folder
goto file


:folder
ECHO -------------------------------------------------
ECHO ====== XCI BATCH BUILDER BY JULESONTHEROAD ====== 
ECHO -------------------------------------------------
ECHO "         For XCI_Builder and NX-Trimmer        "
ECHO "                  VERSION 0.1                  "
ECHO more in: https://github.com/julesontheroad/
PING -n 2 127.0.0.1 >NUL 2>&1


for %%f in ("%~dp1%~n1\*.*") do (
if %eNXT% EQU 1 ( "%rutaNXT%" "%%f" )
if %XCIB% EQU 1 ( "%rutaXCIB%" "%%f" )
)
ECHO -------------------------------------------------
ECHO ************ ALL FILES WERE BUILT! ************** 
ECHO -------------------------------------------------
PING -n 2 127.0.0.1 >NUL 2>&1
ECHO PROGRAM WILL CLOSE NOW
PING -n 2 127.0.0.1 >NUL 2>&1
exit

:file
if "%~x1"==".xci" ( goto xci )
if "%~x1"==".nsp" ( goto nsp )
goto other

:xci
"%rutaNXT%" "%~1" 
exit

:nsp
"%rutaXCIB%" "%~1"
exit

:noprograms
ECHO ....................................................
echo Neither NX-Trimmer.bat or XCI_Builder.bat were found
ECHO ....................................................
echo you can download them from: 
ECHO -----------------------------------
echo https://github.com/julesontheroad/
ECHO -----------------------------------
echo Then install them either in ztools or in XCI_BatchBuilder
echo root directory.
pause
exit


:other
ECHO -------------------------------------------------
ECHO ====== XCI BATCH BUILDER BY JULESONTHEROAD ====== 
ECHO -------------------------------------------------
ECHO "         For XCI_Builder and NX-Trimmer        "
ECHO "                  VERSION 0.1                  "
ECHO more in: https://github.com/julesontheroad/
echo.
ECHO ............
ECHO INSTRUCTIONS
ECHO ............
echo.
echo This program works by dragging an xci or nsp file over it's bat file
echo.
echo It also can process several xci and nsp in a folder
echo.
echo Just drag a folder with xci files, nsp files or a combination of
echo.both over it a it'll redirect each file to the respective program.
echo.
echo.This tool serves as a batch processor for XCI_Builder and NX-Trimmer
echo.
echo.The author of these programs it's not responsible of any problems
echo.they may derive in your system
echo.
pause
exit