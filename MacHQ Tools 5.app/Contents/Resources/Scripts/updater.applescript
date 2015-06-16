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
	
	try
		set local_version_file to the POSIX path of (resources_directory & version_file)
		set fileTarget to POSIX file local_version_file as alias -- omit 'as alias' to get a file object
		
		--set fileTarget to (path to local_version_file)
	on error errStr number errorNumber
		--file doesn't exist, create it and set the version to 0
		do shell script "echo 0 > " & quoted form of local_version_file
	end try
	
	set local_version to do shell script "/bin/cat " & quoted form of local_version_file
	
	set current_version to do shell script "/usr/bin/curl https://raw.githubusercontent.com/nilness/mhqtools/master/MacHQ%20Tools%205.app/Contents/Resources/" & version_file
	log_event("Local version of " & content_file & " is: " & local_version & ", current version is: " & current_version)
	
	if (current_version is not equal to "Not Found") and (current_version > local_version) then
		
		--download the new version
		set local_file to the POSIX path of (content_directory & content_file)
		do shell script "/usr/bin/curl https://raw.githubusercontent.com/nilness/mhqtools/master/MacHQ%20Tools%205.app/Contents/Resources/Scripts/" & content_file & " > " & quoted form of local_file
		--update the local version string
		do shell script "/bin/echo " & quoted form of current_version & " > " & quoted form of local_version_file
		
	end if
	
	
end check_and_update

on log_event(themessage)
	set theLine to (do shell script Â
		"date  +'%Y-%m-%d %H:%M:%S'" as string) Â
		& " " & themessage
	do shell script "echo " & theLine & Â
		" >> " & quoted form of (POSIX path of (resources_directory & "error.log"))
end log_event