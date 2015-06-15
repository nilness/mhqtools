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
