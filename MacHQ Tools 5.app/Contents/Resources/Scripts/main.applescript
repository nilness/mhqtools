global osVersion
global externalIP
global SWUpdateServer
global store
global scripts_directory
global resources_directory

-- check for updates to the updater script
try
	tell application "Finder"
		set scripts_directory to (container of (path to me) as text)
		set resources_directory to (container of container of (path to me) as text)
	end tell
	
	log_event("Scripts directory is: " & scripts_directory)
	log_event("Resources directory is: " & resources_directory)
	
	check_and_update("updater.version", "updater.applescript", scripts_directory)
	
end try

-- get the OS versin
set osVersion to do shell script "/usr/bin/sw_vers -productVersion | /usr/bin/awk -F . '{print $2}'"
log_event("OS version: " & osVersion)

-- try to determine which store we're in
try
	set externalIP to do shell script "/usr/bin/curl http://icanhazip.com/"
	
	if externalIP is equal to (do shell script "/usr/bin/dig +short 001.machq.com") then
		set store to "001"
		set SWUpdateServer to "netboot-station.local:8088"
	else if externalIP is equal to (do shell script "/usr/bin/dig +short 002.machq.com") then
		set store to "002"
		set SWUpdateServer to "fileserver.local:8088"
	else if externalIP is equal to (do shell script "/usr/bin/dig +short 003.machq.com") then
		set store to "003"
		set SWUpdateServer to "netboot-station.local:8088"
	end if
	
on error
	--can't determine which store automatically
	log_event("Unable to determine city")
	set theStoreList to {"St. Louis", "O'Fallon", "Cedar Rapids"}
	set theStore to choose from list theStoreList with title "Help!" with prompt "Where are we?"
	
	if theStore as string is "St. Louis" then
		set SWUpdateServer to "netboot-station.local:8088"
	else if theStore as string is "O'Fallon" then
		set SWUpdateServer to "fileserver.local:8088"
	else if theStore as string is "Cedar Rapids" then
		set SWUpdateServer to "netboot-station.local:8088"
	else
		set SWUpdateServer to "undefined"
	end if
	
end try
log_event("SWUpdateServer is: " & SWUpdateServer)




set theButtonNames to {}

set theButtonNames to theButtonNames & {"Set SWUpdateServer*"}
set theButtonNames to theButtonNames & {"List SWUpdateServer"}
set theButtonNames to theButtonNames & {"Remove SWUpdateServer"}
set theButtonNames to theButtonNames & {"-------------------------------"}
set theButtonNames to theButtonNames & {"Set Used Prefs (all *'ed items)"}
set theButtonNames to theButtonNames & {"Set MacHQ homepage*"}
set theButtonNames to theButtonNames & {"Disable Sleep*"}
set theButtonNames to theButtonNames & {"Rename HD by Size*"}
set theButtonNames to theButtonNames & {"-------------------------------"}
set theButtonNames to theButtonNames & {"Install MHQ Reset Script"}
set theButtonNames to theButtonNames & {"Remove Current User & Reset CPU"}
set theButtonNames to theButtonNames & {"-------------------------------"}
set theButtonNames to theButtonNames & {"Test for Flashback Trojan"}
set theButtonNames to theButtonNames & {"Test for ShellShock vulnerability"}
set theButtonNames to theButtonNames & {"-------------------------------"}
set theButtonNames to theButtonNames & {"Disable AutoBoot"}
set theButtonNames to theButtonNames & {"Enable AutoBoot"}
set theButtonNames to theButtonNames & {"-------------------------------"}
set theButtonNames to theButtonNames & {"Reset current user home folder permissions"}
set theButtonNames to theButtonNames & {"Rebuild Launch Services DB"}
set theButtonNames to theButtonNames & {"Flush DNS Cache"}
set theButtonNames to theButtonNames & {"Reset Fake preferences"}
--set theButtonNames to theButtonNames & {"Update Fake Workflows from Server"}
set theButtonNames to theButtonNames & {"Install SWUpdate StartupItem"}
--set theButtonNames to theButtonNames & {"Save System Profiler Report to server"}
set theButtonNames to theButtonNames & {"Read system version on drive"}

repeat
	set theChoice to choose from list theButtonNames with title "MacHQ Tools" with prompt "Please choose an action:" cancel button name "Quit"
	if theChoice is false then
		exit repeat
	else if theChoice as string is "Set SWUpdateServer*" then
		setSWUpdateServer()
	else if theChoice as string is "List SWUpdateServer" then
		listSWUpdateServer()
	else if theChoice as string is "Remove SWUpdateServer" then
		resetSWUpdateServer()
	else if theChoice as string is "Set MacHQ homepage*" then
		setHomePage()
	else if theChoice as string is "Set Used Prefs (all *'ed items)" then
		setUsedPrefs()
	else if theChoice as string is "Disable Sleep*" then
		disableSleep()
	else if theChoice as string is "Rename HD by Size*" then
		renameHDbySize()
	else if theChoice as string is "Install MHQ Reset Script" then
		installResetScript()
	else if theChoice as string is "Remove MHQ User & Reset CPU" then
		if resetUserCPU() = -128 then
			return
		end if
	else if theChoice as string is "Remove Current User & Reset CPU" then
		if resetThisUserCPU() = -128 then
			return
		end if
	else if theChoice as string is "Test for Flashback Trojan" then
		run script file (scripts_directory & "test_flashback.applescript")
	else if theChoice as string is "Rebuild Launch Services DB" then
		rebuildLaunchServicesDB()
	else if theChoice as string is "Reset Fake preferences" then
		reinstallDefaultFakePreferences()
	else if theChoice as string is "Reinstall Fake Workflows" then
		reinstallFakeWorkflows()
	else if theChoice as string is "Install SWUpdate StartupItem" then
		InstallSWUpdatePlist()
	else if theChoice as string is "Flush DNS Cache" then
		FlushDNSCache()
	else if theChoice as string is "Save System Profiler Report to server" then
		SystemProfilerReport()
	else if theChoice as string is "Update Fake Workflows from Server" then
		UpdateWorkflowsFromServer()
	else if theChoice as string is "Test for ShellShock vulnerability" then
		run script file (scripts_directory & "test_shellshock.applescript")
	else if theChoice as string is "Reset current user home folder permissions" then
		ResetHomeFolderPermissions()
	else if theChoice as string is "Disable AutoBoot" then
		DisableAutoBoot()
	else if theChoice as string is "Enable AutoBoot" then
		EnableAutoBoot()
	else if theChoice as string is "Read system version on drive" then
		ReadSystemVersion()
	end if
	
end repeat

return

on setUsedPrefs()
	disableSleep()
	setSWUpdateServer()
	setHomePage()
	renameHDbySize()
end setUsedPrefs

on setHomePage()
	set fileTarget to (path to library folder from user domain as text) & "Preferences:com.apple.Safari.plist"
	
	try
		-- we don't really need the alias; we're just checking to see if it exists
		fileTarget as alias
	on error
		do shell script "touch " & fileTarget
	end try
	do shell script "defaults write com.apple.Safari HomePage http://twitter.com/machq; defaults write com.apple.Safari NewWindowBehavior 0"
end setHomePage

on listSWUpdateServer()
	try
		set server_name to do shell script "defaults read /Library/Preferences/com.apple.SoftwareUpdate CatalogURL"
		display dialog "SW update server is: " & server_name buttons {"OK"}
	on error
		display dialog "Using default Apple SW Update Server" buttons {"OK"}
	end try
end listSWUpdateServer

on resetSWUpdateServer()
	try
		--if running in 10.7 or later we need to supply password
		
		if (osVersion as number > 6) then
			do shell script "defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL" with administrator privileges
		else
			do shell script "/usr/bin/defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL"
		end if
		
		--do shell script "defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL"
	end try
end resetSWUpdateServer

on disableSleep()
	try
		do shell script "pmset -c displaysleep 0 sleep 0 disksleep 0" with administrator privileges
	end try
end disableSleep

on renameHDbySize()
	
	set my_script to (POSIX path of scripts_directory) & "rename_hd_by_size.sh"
	do shell script "sh " & quoted form of my_script
	
end renameHDbySize

on setSWUpdateServer()
	
	set theSetScript to "

#!/bin/bash

URL1='http://" & SWUpdateServer & "'
    case $(/usr/bin/sw_vers -productVersion | /usr/bin/awk -F . '{print $2}') in
      4) URL=\"${URL1}/index.sucatalog\" ;;   
      5) URL=\"${URL1}/index-leopard.merged-1.sucatalog\" ;;      
      6) URL=\"${URL1}/index-leopard-snowleopard.merged-1.sucatalog\" ;;    
	7) URL=\"${URL1}/index-lion-snowleopard-leopard.merged-1.sucatalog\" ;;
	8) URL=\"${URL1}/index-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog\" ;;
	9) URL=\"${URL1}/index-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog\" ;;
	10) URL=\"${URL1}/index-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog\" ;;
	11) URL=\"${URL1}/index-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog\" ;;
	12) URL=\"${URL1}/index-10.12-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog\" ;;
	13) URL=\"${URL1}/index-10.13-10.12-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog\" ;;
      *) echo \"Unsupported client OS\"; exit 1 ;;
    esac

/usr/bin/defaults write /Library/Preferences/com.apple.SoftwareUpdate CatalogURL \"${URL}\"
	
	"
	--if running in 10.7 or later we need to supply password
	try
		if (osVersion as number > 6) then
			do shell script theSetScript with administrator privileges
		else
			do shell script theSetScript
		end if
	end try
end setSWUpdateServer

on installResetScript()
	try
		tell application "Finder"
			set TheFile to (scripts_directory & "mhqreset.sh") as alias
			duplicate TheFile to the startup disk with replacing
		end tell
	on error error_message
		display dialog error_message
	end try
end installResetScript

on resetThisUserCPU()
	try
		tell application "System Events"
			set current_user to get the name of current user
		end tell
		
		display dialog "This will install the MHQ reset script and restart the computer into single user mode, then run the reset script automatically. The user \"" & current_user & "\" will be deleted with all it's files. Do you wish to continue?" buttons {"Quit", "Continue"} default button "Continue" cancel button "Quit"
		display dialog "Are you absolutely certain?. The user \"" & current_user & "\" will be deleted with all it's files. Do you wish to continue?" buttons {"Quit", "Continue"} default button "Continue" cancel button "Quit"
		
		-- we are going to modify the root bash environment to run our reset script when starting in single user mode
		-- first we need to determine which bash file to add the command to
		if osVersion as number = 10 then
			set target_file to ".bashrc"
		else
			set target_file to ".profile"
		end if
		
		set TheFile to POSIX path of (scripts_directory & "mhqreset.sh")
		set TheFile to quoted form of TheFile
		
		-- Copy the location of the reset script to the bach startup file			
		do shell script "echo \"sh " & TheFile & "\" " & current_user & " >> /private/var/root/" & target_file with administrator privileges
		
		if osVersion as number > 11 then
			--can't reboot to single user mode; need to do it manually
			display dialog "You will need to manually invoke single user mode when the computer restarts in order to finish resetting the computer. Press and hold command-s when the machine reboot." buttons {"OK"}
		else
			-- Restart in single user mode; appears no longer functional in 10.12
			do shell script "nvram boot-args=\"-s\"" with administrator privileges
		end if
		
		tell application "Finder" to restart
		return -128
	end try
end resetThisUserCPU

on InstallSWUpdatePlist()
	
	set TheFile to (resources_directory & "Set SWUpdate Server") as alias
	
	if (osVersion as number > 7) then
		
		tell application "Finder"
			duplicate TheFile to (path to startup items from local domain as alias) with replacing
		end tell
	else
		
		set theScript to "
		
		#!/bin/bash

		if [ ! -e '/Library/StartupItems/Set SWUpdate Server' ]; then 
		    mkdir '/Library/StartupItems/Set SWUpdate Server' 
		fi 
		cp -R '" & (the POSIX path of TheFile) & "' '/Library/StartupItems/Set SWUpdate Server/.' 
		"
		do shell script theScript with administrator privileges
		
	end if
	
	do shell script "chmod -R 755 '/Library/StartupItems/Set SWUpdate Server'; sudo chown -R root:wheel '/Library/StartupItems/Set SWUpdate Server'" with administrator privileges
	
end InstallSWUpdatePlist


on testForFlashbackTrojan()
	
	run script file (scripts_directory & "test_flashback.applescript")
	
end testForFlashbackTrojan


on rebuildLaunchServicesDB()
	display alert ("Alert!") message "The Finder must be quit and will relaunch when complete."
	
	try
		tell application "Finder" to quit
		do shell script "/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user"
		tell application "Finder" to activate
		
	end try
end rebuildLaunchServicesDB

on reinstallDefaultFakePreferences()
	
	--delete the current preference file
	
	tell application "Finder"
		try
			set oldFile to (path to preferences folder as string) & "com.fakeapp.Fake.plist"
			delete file oldFile
		end try
	end tell
	
	
	-- create new preference file and set the properties we care about
	set theSetScript to "
#!/bin/bash

touch \"~/Preferences/com.fakeapp.Fake.plist\"
defaults write com.fakeapp.Fake \"FakeDelayBetweenRunningActions\" '0'
defaults write com.fakeapp.Fake \"FakePlaySuccessFailureSounds\" '0'
"
	do shell script theSetScript
	
	
end reinstallDefaultFakePreferences


on reinstallFakeWorkflows()
	set oldFolder to (path to application support from user domain as text) & "Fake:Workflows:"
	set fakeFolder to (path to application support from user domain as text) & "Fake:"
	set newFolder to (resources_directory & "Workflows") as alias
	--	display dialog oldFolder buttons {"OK"}
	tell application "Finder"
		try
			delete oldFolder
		end try
		duplicate newFolder to fakeFolder
	end tell
end reinstallFakeWorkflows


on FlushDNSCache()
	set theSetScript to "

#!/bin/bash

case $(/usr/bin/sw_vers -productVersion | /usr/bin/awk -F . '{print $2}') in
    4) lookupd -flushcache ;;   
   [56]) dscacheutil -flushcache ;;      
   [78]) sudo killall -HUP mDNSResponder ;;
    9 | 10 | 11 | 12 | 13) dscacheutil -flushcache; sudo killall -HUP mDNSResponder ;;
      *) echo \"Unsupported client OS\"; exit 1 ;;
esac
"
	--if running in 10.7 or 10.8 we need to supply password
	
	if (osVersion as number > 7) then
		do shell script theSetScript with administrator privileges
	else
		do shell script theSetScript
	end if
end FlushDNSCache

on ResetHomeFolderPermissions()
	
	display dialog "This will attempt to restore normal permissions to and remove ACLs from the current user's home folder. This is an experimental new feature and you should make sure you are backed up. Do you wish to continue?" buttons {"Quit", "Continue"} default button "Continue" cancel button "Quit"
	display dialog "Are you absolutely certain?. This feature should only be used on a backed up system. Do you wish to continue?" buttons {"Quit", "Continue"} default button "Continue" cancel button "Quit"
	
	set uid to do shell script "echo $UID"
	
	do shell script "sudo chflags -R nouchg,nouappnd ~ ; sudo chown -R " & uid & ":staff ~ ; sudo chmod -R u+rwX ~ ; chmod -R -N ~" with administrator privileges
	
end ResetHomeFolderPermissions

on SystemProfilerReport()
	
	if (store = "001") then
		set destination to "/Volumes/MHQ/Backed Up/System Profiler Reports/"
		set dest_volume to "afp://fileserver.local/Service"
	else if (store = "002") then
		set destination to "/Volumes/Service/System Profiler Reports/"
		set dest_volume to "afp://fileserver.local/Service"
	else if (store = "003") then
		set destination to "/Volumes/Service/System Profiler Reports/"
		set dest_volume to "afp://fileserver.local/Service"
	end if
	
	--	display dialog oldFolder
	
	tell application "Finder"
		try
			mount volume dest_volume
		on error
			return "Error mounting server volume \"" & dest_volume & "\". Please connect to server manually and try again."
			tell me to quit
		end try
	end tell
	
	--this shell script will generate a system profiler report and save it to the server
	do shell script "#!/bin/sh

# the location includes a folder based on the date in yyyy-mm-dd format
report_location=\"" & destination & "$(date \"+%Y-%m-%d\")/\"

if [ ! -d \"${report_location}\" ]; then
	mkdir \"${report_location}\"
fi

serial=$(system_profiler SPHardwareDataType | grep \"Serial Number\" | awk  '{print $4}')

SPDataTypes=\"SPHardwareDataType SPMemoryDataType SPPowerDataType SPSerialATADataType SPSoftwareDataType SPThunderboltDataType SPUSBDataType SPAirPortDataType SPFireWireDataType SPParallelATADataType SPAudioDataType SPBluetoothDataType SPNetworkDataType\"

system_profiler -xml $SPDataTypes > $report_location$serial\".spx\"
"
	
end SystemProfilerReport

on UpdateWorkflowsFromServer()
	
	set destination to POSIX path of ((path to application support from user domain as text) & "Fake:Workflows:")
	
	if (store = "001") then
		set source to "/Volumes/MHQ/Backed Up/Retail Stuff/Current Workflows/"
		set dest_volume to "afp://fileserver.local/Retail"
	else if (store = "002") then
		set source to "/Volumes/Retail/Current Workflows/"
		set dest_volume to "afp://fileserver.local/Retail"
	else if (store = "003") then
		set source to "/Volumes/Retail/Current Workflows/"
		set dest_volume to "afp://fileserver.local/Retail"
	end if
	
	--	display dialog oldFolder buttons {"OK"}
	
	tell application "Finder"
		try
			mount volume dest_volume
		on error
			return "Error mounting server volume \"" & dest_volume & "\". Please connect to server manually and try again."
			tell me to quit
		end try
	end tell
	
	try
		set theScript to "
	#!/bin/bash
	
	/usr/bin/rsync -a '" & source & "' '" & destination & "'
	" --shell script	
		
		do shell script theScript --with administrator privileges
	on error
		return "Error syncronizing folders."
	end try
	
end UpdateWorkflowsFromServer


on check_and_update(version_file, content_file, content_directory)
	
	-- verify the version file exists locally
	try
		set local_version_file to the POSIX path of (resources_directory & version_file) --version files are in the resources directory
		set fileTarget to POSIX file local_version_file as alias -- if this fails, file doesn't exist
		
	on error errStr number errorNumber
		do shell script "echo 0 > " & quoted form of local_version_file -- create file with version 0 to force update
	end try
	
	-- verify the content file exists locally
	try
		set local_file to the POSIX path of (content_directory & content_file) -- local content file
		set fileTarget to POSIX file local_file as alias -- if this fails, file doesn't exist
		
	on error errStr number errorNumber
		do shell script "echo 0 > " & quoted form of local_version_file -- create file with version 0 to force update
	end try
	
	-- get and compare the local and most current versions
	set local_version to do shell script "/bin/cat " & quoted form of local_version_file
	set current_version to do shell script "/usr/bin/curl https://raw.githubusercontent.com/nilness/mhqtools/master/MacHQ%20Tools%205.app/Contents/Resources/" & version_file
	
	if (current_version is equal to "Not Found") then
		log_event("File https://raw.githubusercontent.com/nilness/mhqtools/master/MacHQ%20Tools%205.app/Contents/Resources/" & version_file & " wasn't found on GitHub.")
		return
	end if
	
	log_event("Checking " & content_file & " versions - local: " & local_version & ", current: " & current_version)
	if (current_version > local_version) then
		--download the new version
		do shell script "/usr/bin/curl https://raw.githubusercontent.com/nilness/mhqtools/master/MacHQ%20Tools%205.app/Contents/Resources/Scripts/" & content_file & " > " & quoted form of local_file
		--update the local version string
		do shell script "/bin/echo " & current_version & " > " & quoted form of local_version_file
	end if
	
end check_and_update

on EnableAutoBoot()
	
	do shell script "sudo nvram AutoBoot=%03" with administrator privileges
	
end EnableAutoBoot

on ReadSystemVersion()
	
	-- get a list of items in the Volumes folder (basically a list of mounted disks)
	do shell script "ls /Volumes/"
	-- set _Result to the list items
	set _Result to the paragraphs of result
	-- set theVolumeTemp to choose a volume from the list, result would be something like "Macintosh HD"
	set theVolumeTemp to (choose from list _Result with prompt "Choose Volume:" without empty selection allowed)
	-- if user presses Cancel, close the dialog
	if theVolumeTemp is false then return
	-- set theVolume to the actual path, e.g. /Volumes/Macintosh HD/
	set theVolume to "/Volumes/" & theVolumeTemp
	
	set _systemVersion to do shell script "defaults read \"" & theVolume & "/System/Library/CoreServices/SystemVersion.plist\" ProductVersion"
	
	display dialog _systemVersion
	
end ReadSystemVersion

on DisableAutoBoot()
	
	do shell script "sudo nvram AutoBoot=%00" with administrator privileges
	
end DisableAutoBoot

on log_event(themessage)
	set theLine to (do shell script "date  +'%Y-%m-%d %H:%M:%S'" as string) & " " & themessage
	do shell script "echo " & theLine & " >> " & quoted form of (POSIX path of (resources_directory & "error.log"))
end log_event