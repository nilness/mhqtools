
set fileTarget to (path to library folder from user domain as text) & "Preferences:com.apple.Safari.plist"

try
	-- we don't really need the alias; we're just checking to see if it exists
	fileTarget as alias
on error
	do shell script "touch " & fileTarget
end try

do shell script "defaults write com.apple.Safari HomePage http://001.machq.com:8013/fmi/webd/ProductViewer; defaults write com.apple.Safari NewWindowBehavior 0"
