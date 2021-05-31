@echo off
set bauto=%bauto%1
set version=1.1
set local=%cd%
:start
if exist C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes (
    goto ki
) else (
    md C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes
    TIMEOUT /T 1 /NOBREAK >nul
    md C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles
    TIMEOUT /T 1 /NOBREAK >nul
    echo >C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\slideshow.ini
)
:ki
cd %local%
if exist options.txt (
    goto opt
) else (
    set erreur=ERREUR : le fichier options.txt est Introuvable
)
:verif
if %bauto% == true1 (
    goto 1
)
color b
echo .                      %erreur%
echo .  ^_                ^_                                      ^_            ^_                            
echo . ^| ^|              ^| ^|                                    ^| ^|          ^| ^|                           
echo . ^| ^|^_^_   ^_^_ ^_  ^_^_^_^| ^| ^_^_   ^_^_ ^_ ^_ ^_^_ ^_^_^_  ^_   ^_ ^_ ^_^_   ^_^_^| ^|^_^_^_    ^_^_^_^| ^|^_^_   ^_^_ ^_ ^_ ^_^_   ^_^_ ^_  ^_^_^_ 
echo . ^| ^'^_ ^\ ^/ ^_^` ^|^/ ^_^_^| ^|^/ ^/  ^/ ^_^` ^| ^'^_^_^/ ^_ ^\^| ^| ^| ^| ^'^_ ^\ ^/ ^_^` ^/ ^_^_^|  ^/ ^_^_^| ^'^_ ^\ ^/ ^_^` ^| ^'^_ ^\ ^/ ^_^` ^|^/ ^_ ^\
echo . ^| ^|^_^) ^| ^(^_^| ^| ^(^_^_^|   ^<  ^| ^(^_^| ^| ^| ^| ^(^_^) ^| ^|^_^| ^| ^| ^| ^| ^(^_^| ^\^_^_ ^\ ^| ^(^_^_^| ^| ^| ^| ^(^_^| ^| ^| ^| ^| ^(^_^| ^|  ^_^_^/
echo . ^|^_^.^_^_^/ ^\^_^_^,^_^|^\^_^_^_^|^_^|^\^_^\  ^\^_^_^, ^|^_^|  ^\^_^_^_^/ ^\^_^_^,^_^|^_^| ^|^_^|^\^_^_^,^_^|^_^_^_^/  ^\^_^_^_^|^_^| ^|^_^|^\^_^_^,^_^|^_^| ^|^_^|^\^_^_^, ^|^\^_^_^_^|
echo .                           ^_^_^/ ^|                                                          ^_^_^/ ^|     
echo .                          ^|^_^_^_^/                                                          ^|^_^_^_^/      
echo .
echo .                                            
echo .                  ############################################################
echo .                  ## Version : %version%                                          ##
echo .                  ## Autre version : https://cutt.ly/VbBsChX                ##
echo .                  ## By : 4samsamAC                                         ##
echo .                  ############################################################
echo .       
echo .       
echo .                  ############################################################
echo .                  ## 1. Lancer                                              ##
echo .                  ## 2. Parametre                                           ##
echo .                  ## 3. Conseil ^/ Aide                                      ##
echo .                  ## 4. Sortir                                              ##
echo .                  ############################################################
echo .       
echo .       
set /p s=Que voulez-vous faire ? Merci de choisir que des chiffre allant de 1 a 4 : 
cls
color 7
if %s% == 1 (
    goto 1
)
if %s% == 2 (
    goto Parametre
)
if %s% == 3 (
    start https://bgfc.glitch.me/?type=help
    goto start
)
if %s% == 4 (
    goto 4
)
if %s% == aabbgdgdBA (
    goto debug
)
set erreur=ERREUR : Mauvais nombre
goto start


:1
cd %bgf%
for /f %%b in ('dir /a-d-s-h /b "./" ^| find /v /c ""') do set /a fn=%%b
set /a r2=%random%%%"%fn%"
set /a r2=%r2%+1
if exist %r2%.jpg (
    set ex=jpg
    goto ht
)
if exist %r2%.png (
    set ex=png
    goto ht
)
if exist %r2%.gif (
    set ex=gif
    goto ht
)
if exist %r2%.ico (
    set ex=ico
    goto ht
)
if exist %r2%.jpeg (
    set ex=jpeg
    goto ht
)
if exist %r2%.jpe (
    set ex=jpe
    goto ht
)
if exist %r2%.bmp (
    set ex=bmp
    goto ht
)
if exist %r2%.tif (
    set ex=tif
    goto ht
)
if exist %r2%.tiff (
    set ex=tiff
    goto ht
)
set erreur=ERREUR : Le nombre ou l'extension d'un des fichier n'est pas bonne  
goto start 


:ht
call :GR
copy "%r2%.%ex%" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\"
copy "%r2%.%ex%" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\" 
del C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\TranscodedWallpaper  
ren "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\%r2%.%ex%" "TranscodedWallpaper"
del C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\CachedImage_%RW%_%RH%_POS4.*
ren "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\%r2%.%ex%" "CachedImage_%RW%_%RH%_POS4.jpg"
if %bauto% == true1 (
    exit /b
)
goto timer5


:3
set erreur=ERREUR : non fini
goto start


:4
exit


:opt
set Numero=1
set "ligne="
set /a Numero-=1
for /f "delims=" %%a in ('more/e +%%Numero%% ^< options.txt') do (
if not defined ligne set "ligne=%%a"
)
set bgf=%ligne%

set Numero=2
set "ligne="
set /a Numero-=1
for /f "delims=" %%a in ('more/e +%%Numero%% ^< options.txt') do (
if not defined ligne set "ligne=%%a"
)
set autos=%ligne%

set Numero=3
set "ligne="
set /a Numero-=1
for /f "delims=" %%a in ('more/e +%%Numero%% ^< options.txt') do (
if not defined ligne set "ligne=%%a"
)
set n=%ligne%
goto verif


:Parametre
set newbgf=%bgf%
cls
color b
echo .                      %erreur2%                      
echo .                                                           ^_^_                  
echo .                 ^_^_^_^_^_^_^_^_^_^_^_ ^_^_^_^_^_^_^_^_^_^_^_^_    ^_^_^_^_^_   ^_^_^_^_^_^/  ^|^_^_^_^_^_^_^_^_   ^_^_^_^_  
echo .                 ^\^_^_^_^_ ^\^_^_  ^\^\^_  ^_^_ ^\^_^_  ^\  ^/     ^\^_^/ ^_^_ ^\   ^_^_^\^_  ^_^_ ^\^_^/ ^_^_ ^\ 
echo .                 ^|  ^|^_^> ^> ^_^_ ^\^|  ^| ^\^/^/ ^_^_ ^\^|  ^Y ^Y  ^\  ^_^_^_^/^|  ^|  ^|  ^| ^\^/^\  ^_^_^_^/ 
echo .                 ^|   ^_^_^(^_^_^_^_  ^/^_^_^|  ^(^_^_^_^_  ^/^_^_^|^_^|  ^/^\^_^_^_  ^>^_^_^|  ^|^_^_^|    ^\^_^_^_  ^>
echo .                 ^|^_^_^|       ^\^/           ^\^/      ^\^/     ^\^/                  ^\^/ 
echo .                     a ne pas trop toucher car non fini ou faire une copie
echo .                         du fichier options.txt avent l'utilisation
echo .                  ############################################################
echo .                  ## 1. Definir le ficher de fond d'ecran                   ##
echo .                  ## 2. Automatiser                                         ##
echo .                  ## 3. Sortir                                              ##
echo .                  ############################################################
echo . 
echo . 
set /p seld=Que voulez-vous faire ? Merci de choisir que des chiffre allant de 1 a 3 : 
cls
if %seld% == 1 (
    goto dffe
)
if %seld% == 2 (
    goto autop
)
if %seld% == 3 (
    goto save
)
set erreur2=ERREUR : Mauvais nombre
goto Parametre


:dffe    
echo chemin actuelle : %bgf%
set /p newsbgf=Rentres le chemin vers le fichier (null pour pas le changer) : 
if %newsbgf% == null (
    goto Parametre
)
set newbgf=%newsbgf%
goto Parametre


:autop
set /p autod=Voulez-vous que le programme se lance automatiquement au demarrage (oui/non) : 
if %autod% == oui (
    goto autostarton
)
if %autod% == non (
    goto autostartoff
)
set /a erreur2=ERREUR : Mauvais nombre
goto Parametre

:save
echo %newbgf%> options.txt
echo ^0>> options.txt
echo ^0>> options.txt
goto start


:autostarton
echo @echo off>"C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\autorunbgf.bat"
echo set bauto=true>>"C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\autorunbgf.bat"
echo set cd=%local%>>"C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\autorunbgf.bat"
echo call "%local%/backgroundchage.bat">>"C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\autorunbgf.bat"
goto Parametre


:autostartoff
if exist "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\autorunbgf.bat" (
    del /q "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\autorunbgf.bat"
    )
goto Parametre


:timer10
cls
echo la prochaine utilisation dans sera dans : 10
TIMEOUT /T 1 /NOBREAK >nul
:timer9
cls
echo la prochaine utilisation dans sera dans : 9
TIMEOUT /T 1 /NOBREAK >nul
:timer8
cls
echo la prochaine utilisation dans sera dans : 8
TIMEOUT /T 1 /NOBREAK >nul
:timer7
cls
echo la prochaine utilisation dans sera dans : 7
TIMEOUT /T 1 /NOBREAK >nul
:timer6
cls
echo la prochaine utilisation dans sera dans : 6
TIMEOUT /T 1 /NOBREAK >nul
:timer5
cls
echo la prochaine utilisation dans sera dans : 5
TIMEOUT /T 1 /NOBREAK >nul
:timer4
cls
echo la prochaine utilisation dans sera dans : 4
TIMEOUT /T 1 /NOBREAK >nul
:timer3
cls
echo la prochaine utilisation dans sera dans : 3
TIMEOUT /T 1 /NOBREAK >nul
:timer2
cls
echo la prochaine utilisation dans sera dans : 2
TIMEOUT /T 1 /NOBREAK >nul
:timer1
cls
echo la prochaine utilisation dans sera dans : 1
TIMEOUT /T 1 /NOBREAK >nul
cls
goto start


:help0
taskkill /f /im explorer.exe
start explorer.exe
goto start

:debug
set /p p=
if %p% == 0 (
    start C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\
)
if %p% == 1 (
    goto help0
)
cls
goto start

	
:GR
FOR /F "skip=2 delims=" %%a IN ('wmic path Win32_VideoController get CurrentHorizontalResolution^,CurrentVerticalResolution /format:Value') do set %%a >nul
 
set /a RW=%CurrentHorizontalResolution%
set /a RH=%CurrentVerticalResolution%
Exit /b