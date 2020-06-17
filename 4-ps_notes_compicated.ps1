# Start transaction log
Start-Transcript

$myVariable = Get-ChildItem c:\windows

$myVariable.GetType()
$myVariable.count
$myVariable | Measure-Object
$myVariable[0].GetType()

$myVariable | Get-Member

# Find out where full name is 
$myVariable | Get-Member *Path*
$myVariable | Get-Member *Name*

# Then
$myVariable.FullName

$myVariable | Select-Object -Property FullName, Extension

# Create a new column
$myVariable | Select-Object -Property FullName, Extension,
    @{Name = "Just Extension"; Expression={ $_.Extension.Substring(1) }}

# Or
Get-ChildItem C:\Windows | Where-Object {$_ -isnot [System.IO.Directory]}




