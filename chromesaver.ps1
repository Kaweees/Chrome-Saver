Stop-Process -Name Chrome
$myDate = [datetime]::now.tostring("yy-MM-dd")
$myTime = [datetime]::now.tostring("hhmm")
Copy-Item -Path "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])\Google\Chrome\User Data\Default\Sessions\" -Destination "$PSScriptRoot\Sessions\$myDate-$myTime" -Recurse