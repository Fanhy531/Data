@echo off
if "%1"=="" goto loop
copy mincost%1.in mincost.in >nul
echo Problem Test
echo Data %1
time<enter
mincost
time<enter
fc mincost.out mincost%1.out
del mincost.in
del mincost.out
pause
goto end
:loop
for %%i in (1 2 3 4 5 6 7 8 9 10) do call %0 %%i
:end
