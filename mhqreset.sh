#!/bin/bash

# if there is a parameter then it is the username, otherwise specify a default
if [ "$1" != "" ]; then
    USER_NAME="$@"
else
    USER_NAME="mhq"
fi


# try to verify single-user mode!

# current_user=`/usr/bin/whoami`
#if [ `/usr/bin/whoami` != "root" ]; then
#echo "Script must be run as root"
#exit
#fi

if [ `! sysctl -n kern.singleuser` != "1" ]; then
echo Script must be run in single user mode
exit
fi

# check and mount the hard drive
/sbin/fsck -fy
/sbin/mount -uw /


# we remove the user account differently based on which version of the OS we're running on
case `/usr/bin/sw_vers -productVersion | /usr/bin/awk -F . '{print $2}'` in

   [34]) rm -rf /var/db/netinfo/local.nidb ### remove the netinfo db file in 10.3 & 10.4
       ;;
   [56]) launchctl load /System/Library/LaunchDaemons/com.apple.DirectoryServices.plist ### start directory services

       # remove user from directory services
       dscl . -delete /groups/_appserveradm GroupMembership "${USER_NAME}"
       dscl . -delete /groups/_appserverusr GroupMembership "{USER_NAME}"
       dscl . -delete /groups/_lpadmin GroupMembership "{USER_NAME}"
       dscl . -delete /groups/admin GroupMembership "{USER_NAME}"
       dscl . -delete /groups/com.apple.sharepoint.group.1 GroupMembership "{USER_NAME}"
       dscl . -delete /groups/staff GroupMembership "{USER_NAME}"

       dscl . -delete /users/"{USER_NAME}"
       ;;
  [789] | 10) rm /var/db/dslocal/nodes/default/users/"{USER_NAME}".plist
       ;; 
    *) echo "unrecognized system"
       exit
       ;;
esac

# further commands will run in all recognized systems

if [ "${USER_NAME}" == "tech" ]; then
# delete various files installed by tech apps
rm -rf /Library/Application\ Support/CrashReporter
rm -rf /Library/Application\ Support/DriveGenius
rm -rf /Library/Application\ Support/Roxio
rm /Library/LaunchAgents/com.prosofteng.DGMonitor.plist
rm /Library/LaunchDaemons/com.bombich.ccc.plist
rm /Library/LaunchDaemons/com.prosofteng.DriveGenius.locum
rm -rf /Library/NTFSProgs
rm /Library/Preferences/com.volitans-software.smartutility.plist
rm /Library/PrivilegedHelperTools/com.bombich.ccc
rm /Library/PrivilegedHelperTools/com.prosofteng.DriveGenius.locum
rm -rf /Applications/Toast\ 11\ Titanium

# delete user folder
rm -rf /Users/"{USER_NAME}"

# remove setup done file so setup runs on boot
rm /var/db/.AppleSetupDone

# remove network configuration files
rm /Library/Preferences/SystemConfiguration/*

# remove mhq startup item if present
rm -rf /Library/StartupItems/Set\ SWUpdate\ Server/

# remove machq swupdate server setting
defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL

# remove this script & root user .profile
rm $0
rm /private/var/root/.profile
rm /private/var/root/.bashrc

# clear any nvram arguments
nvram boot-args=""

# shutdown the computer
shutdown -h now
