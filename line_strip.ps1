$lines = (Get-Content C:\users\andthenenteredalex\Desktop\regex.txt -raw) -split"`r`n"


Foreach ($a in $lines) {

    $address = $a.split(':')[0] # splits on ':' character and saves the part before it to a variable
    Write-Host $address

	}
	

	
<#

opens:

88.88.88.88:443
222.222.222.2:80
111.11.1.1:719

result:
 
88.88.88.88
222.222.222.2
111.11.1.1

Foreach ($a in $lines) {

    $address = $a.split(':')[0] # splits on ' :' character and saves the part before it to a variable
    Write-Host $address

	}



------------------------------------------------------------------------------------------------------


alternate:

C2: 88.88.88.88:443 
C2: 222.222.222.2:80
C2: 111.11.1.1:719

Foreach ($a in $lines) {

    $address = $a.split(' :')[2] # splits on ':' character and saves the part before it to a variable
    Write-Host $address

	}
	
#>
