@echo off
set local=%cd%
color b
echo .
echo .  ^_                ^_                                      ^_            ^_                            
echo . ^| ^|              ^| ^|                                    ^| ^|          ^| ^|                           
echo . ^| ^|^_^_   ^_^_ ^_  ^_^_^_^| ^| ^_^_   ^_^_ ^_ ^_ ^_^_ ^_^_^_  ^_   ^_ ^_ ^_^_   ^_^_^| ^|^_^_^_    ^_^_^_^| ^|^_^_   ^_^_ ^_ ^_ ^_^_   ^_^_ ^_  ^_^_^_ 
echo . ^| ^'^_ ^\ ^/ ^_^` ^|^/ ^_^_^| ^|^/ ^/  ^/ ^_^` ^| ^'^_^_^/ ^_ ^\^| ^| ^| ^| ^'^_ ^\ ^/ ^_^` ^/ ^_^_^|  ^/ ^_^_^| ^'^_ ^\ ^/ ^_^` ^| ^'^_ ^\ ^/ ^_^` ^|^/ ^_ ^\
echo . ^| ^|^_^) ^| ^(^_^| ^| ^(^_^_^|   ^<  ^| ^(^_^| ^| ^| ^| ^(^_^) ^| ^|^_^| ^| ^| ^| ^| ^(^_^| ^\^_^_ ^\ ^| ^(^_^_^| ^| ^| ^| ^(^_^| ^| ^| ^| ^| ^(^_^| ^|  ^_^_^/
echo . ^|^_^.^_^_^/ ^\^_^_^,^_^|^\^_^_^_^|^_^|^\^_^\  ^\^_^_^, ^|^_^|  ^\^_^_^_^/ ^\^_^_^,^_^|^_^| ^|^_^|^\^_^_^,^_^|^_^_^_^/  ^\^_^_^_^|^_^| ^|^_^|^\^_^_^,^_^|^_^| ^|^_^|^\^_^_^, ^|^\^_^_^_^|
echo .                           ^_^_^/ ^|                                                          ^_^_^/ ^|     
echo .                          ^|^_^_^_^/                                                          ^|^_^_^_^/      
echo .
echo .                                Bien venus sur back grounds change             
echo .                  #############################################################
echo .                  ## Version : 0.2                                           ##
echo .                  ## Autre version : https://cutt.ly/VbBsChX		   ##
echo .                  ## By : 4samsamAC                                          ##
echo .                  #############################################################
echo .       
echo .       
echo .                  #############################################################
echo .                  ## 1. Changer de fond d'ecran                              ##
@REM echo .                  ## 2. Definir le fichier ou sont contenus les fond d'ecran ##
echo .                  #############################################################
echo .       
echo .       
set /p s=Que voulez-vous faire ? Merci de choisir que des chiffre allant de 1 a 1 : 
cls
color 7
if %s% == 1 (
    goto 1
)
@REM if %s% == 2 (
@REM     goto 2
@REM )
:1
set /p r1=Choisissez un nombre : 
set /a r2=%random%%%"%r1%"
set /a r2=%r2%+1
echo %r2%
cd ./back grounds
if EXIST %r2%.jpg (
    set ex=jpg
) 
if exist %r2%.png (
    set ex=png
)
del C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\TranscodedWallpaper 
copy "%r2%.%ex%" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\" 
ren "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\%r2%.%ex%" "TranscodedWallpaper"
copy "%r2%.%ex%" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\" 
del C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\CachedImage_1920_1080_POS4.*
ren "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\%r2%.%ex%" "CachedImage_1920_1080_POS4.%ex%"