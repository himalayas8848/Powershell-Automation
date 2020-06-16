# Start transaction log
Start-Transcript

$myInput = Read-Host "Tell me anything"

Write-Host $myInput
Write-Output $myInput

$myOutput = Write-Host $myInput   # Like print
$myOutput

$myOutput = Write-Output $myInput   #Like select
$myOutput

# Input to clipboard
$myInput | Clip   # Variable data is in clipboard.
&notepad

$myFiles = Get-ChildItem C:\Windows
$myFiles | Measure-Object
$myFiles | ConvertTo-Csv | Set-Content D:\github\Powershell-Automation\test.csv

type D:\github\Powershell-Automation\test.csv

# Or
&notepad D:\github\Powershell-Automation\test.csv

# We can re-create it
$myFiles = Get-Content D:\github\Powershell-Automation\test.csv | ConvertFrom-Csv
$myFiles

# write out the column you want
# Only select column property Name and Attributes, convert to csv then write it out.
$myFiles | Select-Object -Property Name, Attributes | ConvertTo-Csv | Set-Content D:\github\Powershell-Automation\test.csv

# XML file is a little compicated.
$myFiles | Select-Object -Property Name, Attributes | Export-Clixml D:\github\Powershell-Automation\test.xml
&notepad D:\github\Powershell-Automation\test.xml



































