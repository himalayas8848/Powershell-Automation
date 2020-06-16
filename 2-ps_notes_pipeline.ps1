# Start transaction log
Start-Transcript

1 | Select-Object

1,2 | Measure-Object
1,2,3,4,5 | Measure-Object -Average -Sum -Maximum -Minimum

$myvariable | Select-Object Line1

# %{} is same as foreach loop
1,2 | %{
    "Received $_"
}

foreach ($myNumber in @(1,2)) {
    "Received $myNumber"
}

1,2 | Select-Object -Last 1

1,2 | Where-Object { $_ -eq 1}
1,2 | Where-Object { $_ -ge 1}
1,2 | Where-Object { $_ -lt 1}

# Now for some of default variables
Get-Variable *Ver*

# This variable has our version information
$PSVersionTable

# Enviroment variables 
dir env:

# The above could be invovle by 
$env:windir

Set-Location env:  #cd
Get-ChildItem      #dir
Set-Item myEnvVariable "Great!"
dir

$env:myEnvVariable

ping localhost -n 1

ping $env:COMPUTERNAME -n 1


$mycommand = "ping"
&$mycommand $env:COMPUTERNAME -n 1

try {
    &$mycommand $env:COMPUTERNAME -n 1
} catch {
    $thisError = $_
    "You are out! Why? $($thisError.Exception.Message)"
}


































