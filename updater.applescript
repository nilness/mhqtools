global scripts_directory
global resources_directory

tell application "Finder"
	set scripts_directory to (container of (path to me) as text)
	set resources_directory to (container of container of (path to me) as text)
end tell

log_event("Scripts directory is: " & scripts_directory)
log_event("Resources directory is: " & resources_directory)

try
	--check for updated scripts
	check_and_update("main.version", "main.applescript", scripts_directory)
	check_and_update("set_home_page.version", "set_home_page.applescript", scripts_directory)
	check_and_update("test_flashback.version", "test_flashback.applescript", scripts_directory)
	check_and_update("test_shellshock.version", "test_shellshock.applescript", scripts_directory)
	
	--check for updated resources
	check_and_update("mhqreset.version", "mhqreset.sh", scripts_directory)
	
on error errStr number errorNumber
	log_event("Error #" & errorNumber & " - " & errStr & " while checking for updates")
	
end try

-- now launch the main script

set theScript to (scripts_directory & "main.applescript") as alias

run script theScript


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
	--log_event("Checking " & content_file & " is: " & local_version & ", current version is: " & current_version)
	
	
	if (current_version > local_version) then
		--download the new version
		do shell script "/usr/bin/curl https://raw.githubusercontent.com/nilness/mhqtools/master/MacHQ%20Tools%205.app/Contents/Resources/Scripts/" & content_file & " > " & quoted form of local_file
		--update the local version string
		do shell script "/bin/echo " & current_version & " > " & quoted form of local_version_file
	end if
	
end check_and_update

on log_event(themessage)
	set theLine to (do shell script "date  +'%Y-%m-%d %H:%M:%S'" as string) & " " & themessage
	do shell script "echo " & theLine & " >> " & quoted form of (POSIX path of (resources_directory & "error.log"))
end log_event