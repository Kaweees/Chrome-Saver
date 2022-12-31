Stop-Process -Name Chrome
$myDate = [datetime]::now.tostring("yy-MM-dd")
$myTime = [datetime]::now.tostring("hhmm")
Copy-Item -Path "C:\Users\$env:UserName\AppData\Local\Google\Chrome\User Data\Default\Sessions\" -Destination "$PSScriptRoot\Sessions\$myDate-$myTime" -Recurse