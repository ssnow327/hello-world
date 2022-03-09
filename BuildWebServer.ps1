Install-WindowsFeature -Name Web-Server -IncludeManagementTools
Remove-Item -Path C:\inetpub\wwwroot\iisstart.htm
New-Item -Path C:\inetpub\wwwroot\iisstart.htm -ItemType File
Add-Content -Path C:\inetpub\wwwroot\iisstart.htm "<H1><center>Hello World from Web Server $env:COMPUTERNAME!!  Rackspace Rocks!!</center></H1>"
Invoke-Command -ScriptBlock{iisreset}
