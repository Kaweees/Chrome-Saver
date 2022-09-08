taskkill /F /IM chrome.exe /T > nul
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set myDate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set myTime=%%a%%b)
xcopy /s "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Sessions" "%CD%\Sessions\%myDate%-%myTime%"
