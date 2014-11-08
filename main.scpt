-- This is an attempt at making this auto-update!

-- First compare versions on main:

set local_file to the POSIX path of ((path to me as string) & "Contents:Resources:main.version")
set local_version to do shell script "/bin/cat \"" & local_file & "\""


set current_version to do shell script "/usr/bin/curl https://raw.githubusercontent.com/nilness/mhqtools/master/main.version"
--display dialog "Local version of main is: " & local_version & ", current version is: " & current_version

if current_version > local_version then
	
	--download the new version
	set local_file to the POSIX path of ((path to me as string) & "Contents:Resources:Scripts:main.applescript")
	do shell script "curl https://raw.githubusercontent.com/nilness/mhqtools/master/main.applescript > \"" & local_file & "\""
	--update the local version string
	set local_file to the POSIX path of ((path to me as string) & "Contents:Resources:main.version")
	do shell script "curl https://raw.githubusercontent.com/nilness/mhqtools/master/main.version > \"" & local_file & "\""
	
end if

-- Next compare versions on mhqreset:

set local_file to the POSIX path of ((path to me as string) & "Contents:Resources:mhqreset.version")
set local_version to do shell script "/bin/cat \"" & local_file & "\""

set current_version to do shell script "/usr/bin/curl https://raw.githubusercontent.com/nilness/mhqtools/master/mhqreset.version"

if current_version > local_version then
	--download the new version
	set local_file to the POSIX path of ((path to me as string) & "Contents:Resources:mhqreset.sh")
	do shell script "curl https://raw.githubusercontent.com/nilness/mhqtools/master/mhqreset.sh > \"" & local_file & "\""
	--update the local version string
	set local_file to the POSIX path of ((path to me as string) & "Contents:Resources:mhqreset.version")
	do shell script "curl https://raw.githubusercontent.com/nilness/mhqtools/master/mhqreset.version > \"" & local_file & "\""
	--display dialog "Need to update reset script!"
end if

set theScript to ((path to me as string) & "Contents:Resources:Scripts:main.applescript") as alias

run script theScript
