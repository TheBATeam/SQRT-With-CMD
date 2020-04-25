# SQRT-With-CMD
In this post, you'll gonna learn **‘How to calculate the sqrt of a number with CMD?** ‘. Calculating the sqrt with cmd of a number is a difficult and very **time-consuming** task. If you are using the traditional **‘Long division method’** or any other **Square Root formula** So, we can use **alternate** method here to solve this quickly with fewer efforts.

# SQRT WITH CMD – ALGORIGHTM LOGIC
If a number is a perfect square (E.g: 4,16,25 …) and then if we subtract odd numbers series elements (E.g: 1,3,5,7 …) then at last – we get a perfect ‘‘. Otherwise, the number is not a perfect square and it needs to be calculated only by **long division**.

![SQRT Demo](https://i2.wp.com/www.thebateam.org/wp-content/uploads/2020/02/SQRT-Demo.gif?w=600&ssl=1)

I’m using a **loop to calculate the sqrt of perfect squares**, and I’m using **VBS** (instead of defining long division, which would have been difficult) to fulfill my requirement. I think this is the smartest thing to do here in this project.
# THE CODE – CALCULATE SQRT OF A NUMBER IN BATCH?
If you read the code carefully, you’ll know how the program works and you even can’t recognize that I am using **VBS** for calculating sqrt of **non-perfect squares**.

```
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
set /a no=%no%-
%sub%
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
Del /q "%tmp%\a.vbs"
goto top

rem #kvc 
```
[Read Complete Article](https://www.thebateam.org/2020/02/sqrt-with-cmd/)
