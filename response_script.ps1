#in progress Summer 2019

$userid = 'andthenenteredalex'
$locations = @('\appdata\local\temp','\downloads','\documents')

foreach ( $i in $locations ) { 
    $location_variable = 'C:\users\' + $userid + $i
    Write-Host `n $i`n
    Get-ChildItem -path $location_variable | Where-Object {$_.psiscontainer -eq $false -and $_.lastwritetime -gt (Get-Date).AddDays(-2)} | Select-Object name,lastwritetime,extension | Sort-Object lastwritetime -Descending

}



# list of properties
#get-member

<#
set-accesscontrol
get-accesscontrol
encrypt
decrypt
gethashcode
gettype
pschildname
psdrive
psiscontainer
psparentpath
pspath
psprovider
attributes
creationtime
directory
directoryname
exists
extension
fullname
isreadonly
lastaccesstime
lastwritetime
length
name
basename
versioninfo
#>
#Get-ChildItem 'C:\users\andthenenteredalex\appdata\local\temp' | Where-Object {$_.PsisContainer -eq $false -and $_.lastwritetime -gt (get-date).adddays(-2)} | Select-Object name,lastwritetime,fileextension
