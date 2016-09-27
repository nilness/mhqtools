#!/bin/bash

# if there is a parameter then it is the username, otherwise specify a default
if [ "$1" != "" ]; then
    USER_NAME="$*"
else
    USER_NAME="mhq"
fi


# try to verify single-user mode!

if [ `! sysctl -n kern.singleuser` != "1" ]; then
    echo Script must be run in single user mode
    exit
fi

# check and mount the hard drive
echo "********************************* Mounting file system"
/sbin/fsck -fy
/sbin/mount -uw /


# we remove the user account differently based on which version of the OS we're running on
echo "********************************* Removing user account"
case $(/usr/bin/sw_vers -productVersion | /usr/bin/awk -F . '{print $2}') in

   [34]) rm -rf /var/db/netinfo/local.nidb ### remove the netinfo db file in 10.3 & 10.4
       ;;
   [56]) launchctl load /System/Library/LaunchDaemons/com.apple.DirectoryServices.plist ### start directory services

       # remove user from directory services
       dscl . -delete /groups/_appserveradm GroupMembership "${USER_NAME}"
       dscl . -delete /groups/_appserverusr GroupMembership "${USER_NAME}"
       dscl . -delete /groups/_lpadmin GroupMembership "${USER_NAME}"
       dscl . -delete /groups/admin GroupMembership "${USER_NAME}"
       dscl . -delete /groups/com.apple.sharepoint.group.1 GroupMembership "${USER_NAME}"
       dscl . -delete /groups/staff GroupMembership "${USER_NAME}"

       dscl . -delete /users/"${USER_NAME}"
       ;;
  [789] | 10 | 11 | 12) rm /var/db/dslocal/nodes/Default/users/"${USER_NAME}".plist
       ;; 
    *) echo "Unrecognized System Version - user account was NOT removed"
       exit
       ;;
esac

# further commands will run in all recognized systems

if [ "${USER_NAME}" == "tech" ]; then
echo "********************************* Removing tech user additional items"
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
fi

# delete user folder
echo "********************************* Deleting user folder"
rm -rf /Users/"${USER_NAME}"

# remove setup done file so setup runs on boot
echo "********************************* Re-enabling Setup Assistant"
rm /var/db/.AppleSetupDone

# remove network configuration files
echo "********************************* Removing network configuration"
rm -rf /Library/Preferences/SystemConfiguration/*

# remove machq power settings & schedules
#echo "********************************* Removing power settings & schedules"
#rm /Library/Preferences/SystemConfiguration/com.apple.PowerManagement.plist
#rm /Library/Preferences/SystemConfiguration/com.apple.AutoWake.plist

# remove mhq startup item if present
echo "********************************* Removing MacHQ Startup Item"
rm -rf /Library/StartupItems/Set\ SWUpdate\ Server/

# remove machq swupdate server setting
echo "********************************* Removing Software Update Server settings"
defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL

# remove machq launch agents and daemons
echo "********************************* Removing launch agents and daemons"
rm /Library/LaunchDaemons/com.machq.*
rm /Library/LaunchAgents/com.machq.*

# remove machq /usr/local folder
echo "********************************* Removing /usr/local/mhq/"
rm -rf /usr/local/mhq/

# remove this script & root user .profile
echo "********************************* Removing this script"
rm "$0"
rm /private/var/root/.profile
rm /private/var/root/.bashrc

# clear any nvram arguments
echo "********************************* Clearing nvram arguments"
nvram boot-args=""

# shutdown the computer
shutdown -h now
