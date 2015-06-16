global scripts_directory
global resources_directory

try
	tell application "Finder"
		set scripts_directory to (container of (path to me) as text)
		set resources_directory to (container of container of (path to me) as text)
	end tell
	
	--check for updated scripts
	check_and_update("main.version", "main.applescript", scripts_directory)
	check_and_update("set_home_page.version", "set_home_page.applescript", scripts_directory)
	check_and_update("test_flashback.version", "test_flashback.applescript", scripts_directory)
	check_and_update("test_shellshock.version", "test_shellshock.applescript", scripts_directory)
	
	--check for updated resources
	check_and_update("mhqreset.version", "mhqreset.sh", resources_directory)
	
end try


-- now launch the main script

set theScript to (scripts_directory & "main.applescript") as alias

run script theScript


on check_and_update(version_file, content_file, content_directory)
	
	set local_version_file to the POSIX path of (resources_directory & version_file)
	set local_version to do shell script "/bin/cat \"" & local_version_file & "\""
	
	set current_version to do shell script "/usr/bin/curl https://raw.githubusercontent.com/nilness/mhqtools/master/" & version_file
	--display dialog "Local version of main is: " & local_version & ", current version is: " & current_version
	
	if (current_version is not equal to "Not Found") and (current_version > local_version) then
		
		--download the new version
		set local_file to the POSIX path of (content_directory & content_file)
		do shell script "/usr/bin/curl https://raw.githubusercontent.com/nilness/mhqtools/master/" & content_file & " > \"" & local_file & "\""
		--update the local version string
		do shell script "/bin/echo \"" & current_version & "\" > \"" & local_version_file & "\""
		
	end if
end check_and_update
