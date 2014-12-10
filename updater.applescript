-- First compare versions on main:

try
	tell application "Finder"
		set scripts_directory to (container of (path to me) as text)
		set resources_directory to (container of container of (path to me) as text)
	end tell
	
	set local_file to the POSIX path of (resources_directory & "main.version")
	set local_version to do shell script "/bin/cat \"" & local_file & "\""
	
	set current_version to do shell script "/usr/bin/curl https://raw.githubusercontent.com/nilness/mhqtools/master/main.version"
	--display dialog "Local version of main is: " & local_version & ", current version is: " & current_version
	
	if current_version > local_version then
		
		--download the new version
		set local_file to the POSIX path of (scripts_directory & "main.applescript")
		do shell script "curl https://raw.githubusercontent.com/nilness/mhqtools/master/main.applescript > \"" & local_file & "\""
		--update the local version string
		set local_file to the POSIX path of (resources_directory & "main.version")
		do shell script "curl https://raw.githubusercontent.com/nilness/mhqtools/master/main.version > \"" & local_file & "\""
		
	end if
	
	-- Next compare versions on mhqreset:
	
	set local_file to the POSIX path of (resources_directory & "mhqreset.version")
	set local_version to do shell script "/bin/cat \"" & local_file & "\""
	
	set current_version to do shell script "/usr/bin/curl https://raw.githubusercontent.com/nilness/mhqtools/master/mhqreset.version"
	
	if current_version > local_version then
		--download the new version
		set local_file to the POSIX path of (resources_directory & "mhqreset.sh")
		do shell script "curl https://raw.githubusercontent.com/nilness/mhqtools/master/mhqreset.sh > \"" & local_file & "\""
		--update the local version string
		set local_file to the POSIX path of (resources_directory & "mhqreset.version")
		do shell script "curl https://raw.githubusercontent.com/nilness/mhqtools/master/mhqreset.version > \"" & local_file & "\""
		--display dialog "Need to update reset script!"
	end if
	
end try

-- now launch the main script

set theScript to (scripts_directory & "main.applescript") as alias

run script theScript
