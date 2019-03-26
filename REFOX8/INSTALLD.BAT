@echo off
if "%1"=="" goto STARTERROR
if "%2"=="" goto STARTERROR
if %1==A: goto CHECKHD
if %1==a: goto CHECKHD
if %1==B: goto CHECKHD
if %1==b: goto CHECKHD
goto STARTERROR

:CHECKHD
if %2==C: goto START
if %2==c: goto START
if %2==D: goto START
if %2==d: goto START
if %2==E: goto START
if %2==e: goto START
if %2==F: goto START
if %2==f: goto START
if %2==G: goto START
if %2==g: goto START
if %2==H: goto START
if %2==h: goto START
if %2==I: goto START
if %2==i: goto START
if %2==J: goto START
if %2==j: goto START
if %2==K: goto START
if %2==k: goto START
if %2==L: goto START
if %2==l: goto START
if %2==M: goto START
if %2==m: goto START
if %2==N: goto START
if %2==n: goto START
if %2==O  goto START
if %2==o: goto START
if %2==P: goto START
if %2==p: goto START
if %2==Q: goto START
if %2==q: goto START
if %2==R: goto START
if %2==r: goto START
if %2==S: goto START
if %2==s: goto START
if %2==T: goto START
if %2==t: goto START
if %2==U: goto START
if %2==u: goto START
if %2==V: goto START
if %2==v: goto START
if %2==W: goto START
if %2==w: goto START
if %2==X: goto START
if %2==x: goto START
if %2==Y: goto START
if %2==y: goto START
if %2==Z: goto START
if %2==z: goto START


goto STARTERROR

:START
if not exist %2\*.* goto NODRIVE
if not exist %2\refox\*.* goto CREATE
rem directory already exists
echo A REFOX subdirectory exists already - press any key to continue or 
echo press Ctrl-Break to exit installation
pause
goto CONTINUE

:CREATE
md %2\refox

:CONTINUE
copy %1\REFOX8.* %2\refox\*.*
copy %1\ADDREFOX.PRG %2\refox\*.*
copy %1\XPRGEN??.APP %2\refox\*.*
cd %2\refox
md %2apps
xcopy %1\APPS %2\REFOX\APPS /S


goto SUCCESS


:SUCCESS
echo Please wait...
%2
cd \refox
refox7
echo Installation completed. Please add \REFOX to your PATH statement
echo Type REFOX8 to use ReFox first time.  The serial number and
echo activation key text must be entered to activate this program
echo from 'demo' mode to a fully working copy.
echo Look at the READ.ME for for any further information.
goto :END

:STARTERROR

echo.
echo Syntax: INSTALL [source drive] [destination drive]
echo.
echo To install ReFox you must specify the drive you are installing FROM and
echo the drive you are installing TO.  The install will be into a REFOX
echo directory off the target root.
echo.
echo                        e.g.  INSTALL A: C:
echo.
echo  
goto END

:NODRIVE
echo.
echo Cannot find the specified destination drive please check and try again
echo.
echo  
goto END

:END

