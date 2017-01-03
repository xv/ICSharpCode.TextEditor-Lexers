#
# LeapYear.ps1,  Version 1.00
#
# Usage:  .\LEAPYEAR.PS1  [ year ]
#
# Where:  "year"  is the year which you want to test
#                 (default is current year)
#
# Written by Rob van der Woude
# http://www.robvanderwoude.com
#

# Get the specified year
param( [int]$year = ( Get-Date ).Year )

# Get the current year
[int]$thisyear = ( Get-Date ).Year

# Format the output text (past, present or future?)
$is1 = "is"
$is2 = ""
If ( $year -lt $thisyear ) {
	$is1 = "was"
}
If ( $year -gt $thisyear ) {
	$is1 = "will"
	$is2 = " be"
}

# Check if the specified year is a leap year
[boolean]$leapyear = ( [boolean]!( $year % 4 ) -and [boolean]( $year % 100 ) ) -or [boolean]!( $year % 400 )

# Display the result
If ( $leapyear ) {
	Write-Host "$year $is1$is2 a leap year"
}
Else {
	Write-Host "$year $is1 NOT$is2 a leap year"
}
