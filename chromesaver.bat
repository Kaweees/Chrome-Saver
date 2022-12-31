@echo off
taskkill /F /IM chrome.exe /T > nul
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set myDate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set myTime=%%a%%b)
Xcopy /s "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Sessions" "%CD%\Sessions\%myDate%-%myTime%" /E /H /C /I