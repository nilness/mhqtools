-- This is the master machq script to replace all others!
-- First find out the version of OS X

global osVersion
global externalIP
global SWUpdateServer
global store

set osVersion to do shell script "/usr/bin/sw_vers -productVersion | /usr/bin/awk -F . '{print $2}'"

try
	set externalIP to do shell script "/usr/bin/curl http://icanhazip.com/"
	
	set test1 to do shell script "/usr/bin/dig +short 001.machq.com"
	set test2 to do shell script "/usr/bin/dig +short 002.machq.com"
	set test3 to do shell script "/usr/bin/dig +short 003.machq.com"
	
	
	
	if externalIP is test1 then
		set store to "001"
		set SWUpdateServer to "mhq-swupdate.local:8088"
	else if externalIP is test2 then
		set store to "002"
		set SWUpdateServer to "xserve.local:8088"
	else if externalIP is test3 then
		set store to "003"
		set SWUpdateServer to "servercdr.local:8088"
	end if
	
on error
	--can't determine which store automatically
	set theStoreList to {"St. Louis", "O'Fallon", "Cedar Rapids"}
	set theStore to choose from list theStoreList with title "Help!" with prompt "Where are we?"
	
	if theStore as string is "St. Louis" then
		set SWUpdateServer to "mhq-swupdate.local:8088"
	else if theStore as string is "O'Fallon" then
		set SWUpdateServer to "xserve.local:8088"
	else if theStore as string is "Cedar Rapids" then
		set SWUpdateServer to "servercdr.local:8088"
	end if
	
end try

--display dialog osVersion

--display dialog SWUpdateServer


set theButtonNames to {"Set Used Prefs (all *'ed items)", "Set SWUpdateServer*", "List SWUpdateServer", "Remove SWUpdateServer", "Set MacHQ homepage*", "Disable Sleep*", "Rename HD by Size*", "Install MHQ Reset Script", "Remove MHQ User & Reset CPU", "Remove Current User & Reset CPU", "Install Tech User Reset Script", "Test for Flashback Trojan", "Rebuild Launch Services DB", "Flush DNS Cache", "Reinstall default Fake preferences", "Update Fake Workflows from Server", "Install SWUpdate StartupItem", "Save System Profiler Report to server"}

repeat
	set theChoice to choose from list theButtonNames
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
	else if theChoice as string is "Install Tech User Reset Script" then
		installTechResetScript()
	else if theChoice as string is "Test for Flashback Trojan" then
		testForFlashbackTrojan()
	else if theChoice as string is "Rebuild Launch Services DB" then
		rebuildLaunchServicesDB()
	else if theChoice as string is "Reinstall default Fake preferences" then
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
	else
		tell me to quit
	end if
	
end repeat

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
		tell application "Safari"
			activate
		end tell
	end try
	if running of application "Safari" then
		tell application "Safari"
			quit
		end tell
		repeat while (running of application "Safari")
			delay 1
		end repeat
		delay 2
	end if
	do shell script "defaults write com.apple.Safari HomePage http://twitter.com/machq; defaults write com.apple.Safari NewWindowBehavior 0"
	delay 2
	tell application "Safari"
		activate
		delay 2
		close every window
		quit
	end tell
end setHomePage

on listSWUpdateServer()
	try
		set server_name to do shell script "defaults read /Library/Preferences/com.apple.SoftwareUpdate CatalogURL"
		display dialog "SW update server is: " & server_name
	on error
		display dialog "Using default Apple SW Update Server"
	end try
end listSWUpdateServer

on resetSWUpdateServer()
	try
		--if running in 10.7 or later we need to supply password
		
		if (osVersion < "7" and osVersion > "3") then
			do shell script "/usr/bin/defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL"
		else
			do shell script "defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL" with administrator privileges
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
	set theSetScript to "

#!/bin/bash

boot_vol=`bless --getBoot`

boot_disk=`diskutil info ${boot_vol} |sed '/^ *Volume Name: */!d;s###'`

disk_size=`system_profiler SPSerialATADataType |sed '/^ *Capacity: */!d;s###' | awk '{print int($1+0.5)  $2\" HD\"}' | head -n 1 `

diskutil rename \"${boot_disk}\" \"${disk_size}\"

# Show icons for hard drives, servers, and removable media on the desktop
#defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
#defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
#defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

killall Finder
	
"
	do shell script theSetScript
	
end renameHDbySize

on setSWUpdateServer()
	
	set theSetScript to "

#!/bin/bash

URL1='http://" & SWUpdateServer & "'
    case `/usr/bin/sw_vers -productVersion | /usr/bin/awk -F . '{print $2}'` in
      4) URL=\"${URL1}/index.sucatalog\" ;;   
      5) URL=\"${URL1}/index-leopard.merged-1.sucatalog\" ;;      
      6) URL=\"${URL1}/index-leopard-snowleopard.merged-1.sucatalog\" ;;    
	7) URL=\"${URL1}/index-lion-snowleopard-leopard.merged-1.sucatalog\" ;;
	8) URL=\"${URL1}/index-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog\" ;;
	9) URL=\"${URL1}/index-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog\" ;;
	10) URL=\"${URL1}/index-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog\" ;;
      *) echo \"Unsupported client OS\"; exit 1 ;;
    esac

/usr/bin/defaults write /Library/Preferences/com.apple.SoftwareUpdate CatalogURL \"${URL}\"
	
	"
	--if running in 10.7 or 10.8 we need to supply password
	
	if (osVersion < "7" and osVersion > "3") then
		do shell script theSetScript
	else
		do shell script theSetScript with administrator privileges
	end if
	
end setSWUpdateServer

on installResetScript()
	try
		set TheFile to ((path to me as string) & "Contents:Resources:mhqreset.sh") as alias
		tell application "Finder"
			duplicate TheFile to the startup disk with replacing
		end tell
	end try
end installResetScript

on resetUserCPU()
	try
		display dialog "This will install the MHQ reset script and restart the computer into single user mode, then run the reset script automatically. Do you wish to continue?" buttons {"Quit", "Continue"} default button "Continue" cancel button "Quit"
		installResetScript()
		if osVersion is "10" then
			do shell script "echo \"sh /mhqreset.sh\" >> /private/var/root/.bashrc" with administrator privileges
		else
			do shell script "echo \"sh /mhqreset.sh\" >> /private/var/root/.profile" with administrator privileges
		end if
		do shell script "nvram boot-args=\"-s\"" with administrator privileges
		tell application "Finder" to restart
		return -128
	end try
end resetUserCPU

on resetThisUserCPU()
	try
		tell application "System Events"
			set current_user to get the name of current user
		end tell
		
		display dialog "This will install the MHQ reset script and restart the computer into single user mode, then run the reset script automatically. The user \"" & current_user & "\" will be deleted with all it's files. Do you wish to continue?" buttons {"Quit", "Continue"} default button "Continue" cancel button "Quit"
		display dialog "Are you absolutely certain?. The user \"" & current_user & "\" will be deleted with all it's files. Do you wish to continue?" buttons {"Quit", "Continue"} default button "Continue" cancel button "Quit"
		installResetScript()
		if osVersion is "10" then
			do shell script "echo \"sh /mhqreset.sh\" >> /private/var/root/.bashrc" with administrator privileges
		else
			do shell script "echo \"sh /mhqreset.sh\" >> /private/var/root/.profile" with administrator privileges
		end if
		do shell script "nvram boot-args=\"-s\"" with administrator privileges
		tell application "Finder" to restart
		return -128
	end try
end resetThisUserCPU


on installTechResetScript()
	set TheFile to ((path to me as string) & "Contents:Resources:techreset.sh") as alias
	tell application "Finder"
		duplicate TheFile to the startup disk with replacing
	end tell
	
end installTechResetScript


on InstallSWUpdatePlist()
	
	set TheFile to ((path to me as string) & "Contents:Resources:Set SWUpdate Server") as alias
	
	if (osVersion < "7" and osVersion > "3") then
		set theScript to "
		
		#!/bin/bash

		if [ ! -e '/Library/StartupItems/Set SWUpdate Server' ]; then 
		    mkdir '/Library/StartupItems/Set SWUpdate Server' 
		fi 
		cp -R '" & (the POSIX path of TheFile) & "' '/Library/StartupItems/Set SWUpdate Server/.' 
		"
		do shell script theScript with administrator privileges
		
	else
		tell application "Finder"
			duplicate TheFile to (path to startup items from local domain as alias) with replacing
		end tell
	end if
	
	do shell script "chmod -R 755 '/Library/StartupItems/Set SWUpdate Server'; sudo chown -R root:wheel '/Library/StartupItems/Set SWUpdate Server'" with administrator privileges
	
end InstallSWUpdatePlist


on testForFlashbackTrojan()
	display alert ("Beginning test") message "Testing for presence of Flashback trojan. Keep in mind this is NOT a definitive test!"
	
	try
		set check1 to do shell script "defaults read /Applications/Safari.app/Contents/Info LSEnvironment"
		display alert ("Possible infection!") message "Recommend running full antivirus scan with up to date scanner. Please note this test is a first release and may produce false positives."
		
	on error error_message number error_number
		if error_number is equal to 1 then
			display alert ("Alert!") message "First check appears okay"
		end if
	end try
	
	try
		set check2 to do shell script "defaults read ~/.MacOSX/environment DYLD_INSERT_LIBRARIES"
		display alert ("Possible infection!") message "Recommend running full antivirus scan with up to date scanner. Please note this test is a first release and may produce false positives."
		
	on error error_message number error_number
		if error_number is equal to 1 then
			display alert ("Alert!") message "Second check appears okay"
		end if
	end try
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
	set TheFile to ((path to me as string) & "Contents:Resources:com.fakeapp.Fake.plist") as alias
	tell application "Finder"
		duplicate TheFile to ((path to preferences folder) as alias) with replacing
	end tell
	set theSetScript to "
#!/bin/bash

defaults delete com.fakeapp.Fake \"FUWindowFrameString\"
defaults delete com.fakeapp.Fake \"NSWindow Frame ActionLibrary\"
defaults delete com.fakeapp.Fake \"NSWindow Frame FUWindow\"
defaults delete com.fakeapp.Fake \"NSWindow Frame Preferences\"
defaults delete com.fakeapp.Fake \"WebDatabaseDirectory\"
defaults write com.fakeapp.Fake \"FakeDelayBetweenRunningActions\" '0'
"
	do shell script theSetScript
	
end reinstallDefaultFakePreferences


on reinstallFakeWorkflows()
	set oldFolder to (path to application support from user domain as text) & "Fake:Workflows:"
	set fakeFolder to (path to application support from user domain as text) & "Fake:"
	set newFolder to ((path to me as string) & "Contents:Resources:Workflows") as alias
	--	display dialog oldFolder
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

case `/usr/bin/sw_vers -productVersion | /usr/bin/awk -F . '{print $2}'` in
    4) lookupd -flushcache ;;   
   [56]) dscacheutil -flushcache ;;      
    [78]) sudo killall -HUP mDNSResponder ;;
    9 | 10) dscacheutil -flushcache;sudo killall -HUP mDNSResponder ;;
      *) echo \"Unsupported client OS\"; exit 1 ;;
esac

	
	"
	--if running in 10.7 or 10.8 we need to supply password
	
	if (osVersion < "7" and osVersion > "3") then
		do shell script theSetScript
	else
		do shell script theSetScript with administrator privileges
	end if
end FlushDNSCache

on SystemProfilerReport()
	
	if (store = "001") then
		set destination to "/Volumes/MHQ/Backed Up/System Profiler Reports/"
		set dest_volume to "afp://mhq-swupdate.local/MHQ"
	else if (store = "002") then
		set destination to "/Volumes/Service/System Profiler Reports/"
		set dest_volume to "afp://xserve.local/Service"
	else if (store = "003") then
		set destination to "/Volumes/Service/System Profiler Reports/"
		set dest_volume to "afp://servercdr.local/Service"
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
report_location=\"" & destination & "`date \"+%Y-%m-%d\"`/\"

if [ ! -d \"${report_location}\" ]; then
	mkdir \"${report_location}\"
fi

serial=`system_profiler SPHardwareDataType | grep \"Serial Number\" | awk  '{print $4}'`

SPDataTypes=\"SPHardwareDataType SPMemoryDataType SPPowerDataType SPSerialATADataType SPSoftwareDataType SPThunderboltDataType SPUSBDataType SPAirPortDataType SPFireWireDataType SPParallelATADataType SPAudioDataType SPBluetoothDataType SPNetworkDataType\"

system_profiler -xml $SPDataTypes > $report_location$serial\".spx\"
"
	
end SystemProfilerReport

on UpdateWorkflowsFromServer()
	
	set destination to POSIX path of ((path to application support from user domain as text) & "Fake:Workflows:")
	
	if (store = "001") then
		set source to "/Volumes/MHQ/Backed Up/Retail Stuff/Current Workflows/"
		set dest_volume to "afp://mhq-swupdate.local/MHQ"
	else if (store = "002") then
		set source to "/Volumes/Retail/Current Workflows/"
		set dest_volume to "afp://xserve.local/Retail"
	else if (store = "003") then
		set source to "/Volumes/Retail/Current Workflows/"
		set dest_volume to "afp://servercdr.local/Retail"
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
