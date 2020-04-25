
:: The Sentences After 'Rem' are Comments....

Rem This Program is Only for educational Purpose only ...
rem Created by : 'karanveer chouhan [kvc]'
rem Created on : 10 aug. 2014
rem Copyrights : copyright (c) 2014



@echo off
:top
cls
Title Sqrt Calculator... by Kvc
echo.
echo.
set /p "no=Enter The Number to calculate Sqrt : "
if not defined no goto top
set /a "no=%no%"
set sub=1
set sqrt=0
set bkup=%no%

Rem Calculating Sqrt here....
Rem Using Property of Perfect sqr, that we have learned in small Classes...that if we subtract odd nos. from perfect sqr,then 
rem atlast perfect '0' will be left otherwise not.... :]
:loop
if %no% gtr 0 (
set /a no=%no%-%sub%
set /a sub+=2
set /a sqrt+=1
goto loop
)
goto end

:end
REM Checking if the answer is correct..as cmd doesn't support float values.... :[
set /a sqr=%sqrt%*%sqrt%
if "%sqr%" == "%bkup%" (
Echo. Sqrt : %sqrt%
) ELSE (
echo. wscript.echo %bkup%^^(1/2^) >"%tmp%\a.vbs"
for /f "skip=3 tokens=*" %%a in ('cscript "%tmp%\a.vbs"') do echo. %%a
)
echo.
pause

goto top