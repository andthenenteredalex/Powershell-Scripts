#registry keys script.
# ACC - 2019 - in progress.

$key = 'software\microsoft\currentversion\run'
# $valuename = 'Security Packages'
#$computers = Get-Content Servers.txt
#foreach ($computer in $computers) {
#	$reg = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey('LocalMachine', $computer)
#	$regkey = $reg.opensubkey($key)
#	$regkey.getvalue($valuename)
#}
#

$reg = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey('LocalMachine', 'PC994L175')
$regkey = $reg.opensubkey($key)

$computer1 = 'Computer1'
$Reg = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey('LocalMachine', $computer1)
$RegKey= $Reg.OpenSubKey('software\microsoft\currentversion\run').GetValue()
$NetbackupVersion1 = $RegKey.GetValue("PackageVersion")
