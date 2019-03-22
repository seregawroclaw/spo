@echo off
Set /p filename=Enter file name
for /r %%G in (%filename%.*) do notepad %%G
pause