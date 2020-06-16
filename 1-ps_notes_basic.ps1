# Start transaction log
Start-Transcript

# Get-Help
Get-Verb
Get-Command

# Go to prefer folder
# Create a tempory file
Set-Content -Path "test.txt" -Value "This is a test"
Set-Content "test.txt" "This is a test"

# want to know what other commands are like?
 Get-Help Add-Content

 # Some DOS commands have aliaes
 type test.txt
 dir test.txt
 copy test.txt test2.txt
 del test.txt
 move test.txt test2.txt

 dir .\test.txt -Recurse

 Get-Alias
 Get-Alias *D*

 $myvariable = "This is a variable"
 "This is a variable $myvariable"
 "This is a variable is too `$myvariable"

# Back ticks can continue a line
"I am `
more than a line"

@"
I am 
more than a line
"@

$myvariable = 1
"$myvariable +1"

"$($myvariable +1)"

Get-Variable

# This is a block of executable code
{
    1 + 1
}


# It doesn't do anything by itself, unless you use a dot.
.{
    1 + 1
}

# Or like local variable
&{
    1 + 1
}

# You can turn a string into a block and execute it. Like dynamic SQL.
$myvariable = [ScriptBlock]::Create("1+1")
&$myvariable

# Variable is interchangeable with a .net ohject. You can call method on them.
([int] "1").GetType()
([int] "1").ToString().GetType()

# What about array
$myArray = @("what about", "array")

$myArray.GetType()

# This is a hash table
$myvariable = @{Line1 = "This is "
    Line2 = "a hash table"
    }
$myvariable

$myvariable = @{
    Path = "D:\github\Powershell-Automation\test.txt"
    Value = "This is a hash table"
    }
Set-Content -Path $myvariable["Path"] -Value $myvariable["Value"]

# If put a [], it will create its own property.
$myvariable = [PSCustomObject]@{
    Line1 = "This is "
    Line2 = "a hash table"
    }
$myvariable.Line1

# Be careful to dates, they are represented internally as US format.
$myvariable = [DateTime] "2014-07-23"
$myvariable
$myvariable.ToString()
"Oops: $myvariable"
"Use this instead: $($myvariable.ToString())"



























