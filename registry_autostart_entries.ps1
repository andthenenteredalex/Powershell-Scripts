# ACC 2019
# this was an educational project. This script is not fully functional yet. Plans to improve it at a later date.

$individual_user_key_options = @(

	'HKCU:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run',
	'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Windows\Run',
	'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run',
	'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnce',
	'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnceEx',
	'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunServices',
	'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce'
	
	)

$run_keys_all_users = @(

	'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run',
	'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run',
	'HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnce',
	'HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnceEx',
	'HKLM:\System\CurrentControlSet\Services',
	'HKLM:\Software\Microsoft\Windows\CurrentVersion\RunServices',
	'HKLM:\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce'
	
	)

$active_setup_execute_commands_once_per_user_during_logon = @(

	'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components',
	'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Active Setup\Installed Components'
	
	)

$undocumented_autostart_feature = @(

	'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SharedTaskScheduler',
	'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\SharedTaskScheduler'
	
	)

$shell_related_autostart_entries_items_displayed_when_you_right_click_on_files_or_folders = @(

	'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects',
	'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects',
	'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad',
	'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad',
	'HKCU:\Software\Classes\*\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Wow6432Node\Classes\*\ShellEx\ContextMenuHandlers',
	'HKCU:\Software\Classes\Drive\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Wow6432Node\Classes\Drive\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Classes\*\ShellEx\PropertySheetHandlers',
	'HKLM:\Software\Wow6432Node\Classes\*\ShellEx\PropertySheetHandlers',
	'HKCU:\Software\Classes\Directory\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Classes\Directory\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Wow6432Node\Classes\Directory\ShellEx\ContextMenuHandlers',
	'HKCU:\Software\Classes\Directory\Shellex\DragDropHandlers',
	'HKLM:\Software\Classes\Directory\Shellex\DragDropHandlers',
	'HKLM:\Software\Wow6432Node\Classes\Directory\Shellex\DragDropHandlers',
	'HKLM:\Software\Classes\Directory\Shellex\CopyHookHandlers',
	'HKCU:\Software\Classes\Directory\Background\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Classes\Directory\Background\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Wow6432Node\Classes\Directory\Background\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Classes\Folder\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Wow6432Node\Classes\Folder\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Classes\Folder\ShellEx\DragDropHandlers',
	'HKLM:\Software\Wow6432Node\Classes\Folder\ShellEx\DragDropHandlers',
	'HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers',
	'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers'
	
	)


	
	
	
############ testing one giant array:
$all_key_options = @(

	'HKCU:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run',
	'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Windows\Run',
	'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run',
	'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnce',
	'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnceEx',
	'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunServices',
	'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce'
	'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run',
	'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run',
	'HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnce',
	'HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnceEx',
	'HKLM:\System\CurrentControlSet\Services',
	'HKLM:\Software\Microsoft\Windows\CurrentVersion\RunServices',
	'HKLM:\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce'
	'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components',
	'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Active Setup\Installed Components'
	'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SharedTaskScheduler',
	'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\SharedTaskScheduler'
	'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects',
	'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellServiceObjects',
	'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad',
	'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad',
	'HKCU:\Software\Classes\Drive\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Wow6432Node\Classes\Drive\ShellEx\ContextMenuHandlers',
	'HKCU:\Software\Classes\Directory\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Classes\Directory\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Wow6432Node\Classes\Directory\ShellEx\ContextMenuHandlers',
	'HKCU:\Software\Classes\Directory\Shellex\DragDropHandlers',
	'HKLM:\Software\Classes\Directory\Shellex\DragDropHandlers',
	'HKLM:\Software\Wow6432Node\Classes\Directory\Shellex\DragDropHandlers',
	'HKLM:\Software\Classes\Directory\Shellex\CopyHookHandlers',
	'HKCU:\Software\Classes\Directory\Background\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Classes\Directory\Background\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Wow6432Node\Classes\Directory\Background\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Classes\Folder\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Wow6432Node\Classes\Folder\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Classes\Folder\ShellEx\DragDropHandlers',
	'HKLM:\Software\Wow6432Node\Classes\Folder\ShellEx\DragDropHandlers',
	'HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers',
	'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers'
	'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Font Drivers',
	'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Drivers32',
	'HKLM:\Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Drivers32'
    'HKLM:\Software\Classes\Filter',
    'HKLM:\Software\Classes\CLSID\{083863F1-70DE-11d0-BD40-00A0C911CE86}\Instance',
    'HKLM:\Software\Wow6432Node\Classes\CLSID\{083863F1-70DE-11d0-BD40-00A0C911CE86}\Instance',
    'HKLM:\Software\Classes\CLSID\{7ED96837-96F0-4812-B211-F13C24117ED3}\Instance',
    'HKLM:\Software\Wow6432Node\Classes\CLSID\{7ED96837-96F0-4812-B211-F13C24117ED3}\Instance',
    'HKLM:\System\CurrentControlSet\Control\Session Manager\KnownDlls',
    'HKCU:\Control Panel\Desktop\Scrnsave.exe',
    'HKLM:\System\CurrentControlSet\Services\WinSock2\Parameters\Protocol_Catalog9\Catalog_Entries',
	'HKLM:\System\CurrentControlSet\Services\WinSock2\Parameters\Protocol_Catalog9\Catalog_Entries64'

	)	

	
# these don't work in powershell. I think the * is not seen as a valid path. Perhaps with one on each side, for example *appdata* etc.
	
$variables_with_wildcards = @(
	'HKCU:\Software\Classes\*\ShellEx\ContextMenuHandlers',
    'HKLM:\Software\Wow6432Node\Classes\*\ShellEx\ContextMenuHandlers',
	'HKLM:\Software\Classes\*\ShellEx\PropertySheetHandlers',
	'HKLM:\Software\Wow6432Node\Classes\*\ShellEx\PropertySheetHandlers'
	)
	





	
# these keys are the ones that have the most data	
$most_important_keys = @(
	'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run',
	'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run',
	'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnce',
	'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce',
	'HKLM:\software\microsoft\windows nt\currentversion\winlogon'
	'HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders',
	'HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows\Load',
	'HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders',
	'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders',
	'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders',
	'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnceEx',
	'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SharedTaskScheduler',
	'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\SharedTaskScheduler',
	'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad',
	'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad'

)	
	

$hostname = hostname
$users_on_machine = ls C:\users
$date_var = (Get-Date -Format s | Out-String)
$name_var = $date_var.substring(0,10)
[string]$file_var = "{0}_{1}_reg_autostart_keys.txt" -f $hostname, $name_var
$most_important_keys = Foreach($key in $most_important_keys){
        Write-output $key':'
        Write-output ' '
		Get-ItemProperty $key -erroraction 'silentlycontinue'
}
$installed_components_key = (ls 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components')
$hostname,$date_var,$users_on_machine,$most_important_keys,$installed_components_key | Out-File $env:LOCALAPPDATA\$file_var




	
####### NEW KEYS FROM SYSINTERNALS AUTORUNS

#reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Run\BCMiner
	
#ls 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components'	

#$Value = 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components'
#$item_path = (ls $Value | Out-String)
#Write-Host $item_path

	
	
#### commenting this out for looping functionality


#$KEY_HKLM = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Run'
#$KEY_HKCU = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run'

#$HKLM_CurrentVersion_Run = Get-ItemProperty $KEY_HKLM | Out-String
#$HKCU_CurrentVersion_Run = Get-ItemProperty $KEY_HKCU | Out-String


#Write-Host ' '
#Write-Host $KEY_HKCU
#Write-Host $HKCU_CurrentVersion_Run

#Write-Host $KEY_HKLM
#Write-Host $HKLM_CurrentVersion_Run
