#!/usr/bin/env bash
pkill chrome
$myDate = date +%Y-%m-%d
$myTime = date +%H-%M
$scriptDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
rsync -avz /from/C:/Users/$USER/AppData/Local/Google/Chrome/User Data/Default/Sessions/ /to/$scriptDir/Sessions/$myDate-$myTime