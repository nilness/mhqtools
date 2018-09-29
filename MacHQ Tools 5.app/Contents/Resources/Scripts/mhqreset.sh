#!/bin/bash

# if there is a parameter then it is the username, otherwise specify a default
if [ "$1" != "" ]; then
    USER_NAME="$*"
else
    USER_NAME="mhq"
fi


# try to verify single-user mode!

if [ `! sysctl -n kern.singleuser` != "1" ]; then
    /bin/echo Script must be run in single user mode
    exit
fi

# check and mount the hard drive
/bin/echo "********************************* Mounting file system"
/sbin/fsck -fy
/sbin/mount -uw /


# we remove the user account differently based on which version of the OS we're running on
/bin/echo "********************************* Removing user account"
case $(/usr/bin/sw_vers -productVersion | /usr/bin/awk -F . '{print $2}') in

   [34]) /bin/rm -rf /var/db/netinfo/local.nidb 
   ### remove the netinfo db file in 10.3 & 10.4
       ;;
   [56]) /bin/launchctl load /System/Library/LaunchDaemons/com.apple.DirectoryServices.plist 
   ### start directory services

       # remove user from directory services
       /usr/bin/dscl . -delete /groups/_appserveradm GroupMembership "${USER_NAME}"
       /usr/bin/dscl . -delete /groups/_appserverusr GroupMembership "${USER_NAME}"
       /usr/bin/dscl . -delete /groups/_lpadmin GroupMembership "${USER_NAME}"
       /usr/bin/dscl . -delete /groups/admin GroupMembership "${USER_NAME}"
       /usr/bin/dscl . -delete /groups/com.apple.sharepoint.group.1 GroupMembership "${USER_NAME}"
       /usr/bin/dscl . -delete /groups/staff GroupMembership "${USER_NAME}"

       /usr/bin/dscl . -delete /users/"${USER_NAME}"
       ;;
  [789] | 10 | 11 | 12 | 13 | 14) /bin/rm /var/db/dslocal/nodes/Default/users/"${USER_NAME}".plist
       ;; 
    *) /bin/echo "Unrecognized System Version - user account was NOT removed"
       exit
       ;;
esac

# further commands will run in all recognized systems

if [ "${USER_NAME}" == "tech" ]; then
/bin/echo "********************************* Removing tech user additional items"
# delete various files installed by tech apps
/bin/rm -rf /Library/Application\ Support/CrashReporter
/bin/rm -rf /Library/Application\ Support/DriveGenius
/bin/rm -rf /Library/Application\ Support/Roxio
/bin/rm /Library/LaunchAgents/com.prosofteng.DGMonitor.plist
/bin/rm /Library/LaunchDaemons/com.bombich.ccc.plist
/bin/rm /Library/LaunchDaemons/com.prosofteng.DriveGenius.locum
/bin/rm -rf /Library/NTFSProgs
/bin/rm /Library/Preferences/com.volitans-software.smartutility.plist
/bin/rm /Library/PrivilegedHelperTools/com.bombich.ccc
/bin/rm /Library/PrivilegedHelperTools/com.prosofteng.DriveGenius.locum
/bin/rm -rf /Applications/Toast\ 11\ Titanium
fi

# delete user folder
/bin/echo "********************************* Deleting user folder"
/bin/rm -rf /Users/"${USER_NAME}"

# remove setup done file so setup runs on boot
/bin/echo "********************************* Re-enabling Setup Assistant"
/bin/rm /var/db/.AppleSetupDone

# remove network configuration files
/bin/echo "********************************* Removing network configuration"
/bin/rm -rf /Library/Preferences/SystemConfiguration/*

# remove machq power settings & schedules
/bin/echo "********************************* Removing power settings & schedules"
/bin/rm /Library/Preferences/SystemConfiguration/com.apple.PowerManagement.plist
/bin/rm /Library/Preferences/SystemConfiguration/com.apple.AutoWake.plist

# remove mhq startup item if present
/bin/echo "********************************* Removing MacHQ Startup Item"
/bin/rm -rf /Library/StartupItems/Set\ SWUpdate\ Server/

# remove machq swupdate server setting
/bin/echo "********************************* Removing Software Update Server settings"
defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL

# remove machq launch agents and daemons
/bin/echo "********************************* Removing launch agents and daemons"
/bin/rm /Library/LaunchDaemons/com.machq.*
/bin/rm /Library/LaunchAgents/com.machq.*

# remove Outset
/bin/echo "********************************* Removing Outcast daemons and agents"
/bin/launchctl unload "/Library/LaunchDaemons/com.github.outset.boot.plist"
# /bin/rm -fv "/Library/LaunchDaemons/com.github.outset.boot.plist"
/bin/launchctl unload "/Library/LaunchDaemons/com.github.outset.cleanup.plist"
/bin/rm -fv /Library/LaunchDaemons/com.github.outset.*
/bin/launchctl unload "/Library/LaunchAgents/com.github.outset.login.plist"
#/bin/rm -fv "/Library/LaunchAgents/com.github.outset.login.plist"
/bin/launchctl unload "/Library/LaunchAgents/com.github.outset.on-demand.plist"
#/bin/rm -fv "/Library/LaunchAgents/com.github.outset.on-demand.plist"
/bin/rm -fv /Library/LaunchAgents/com.github.outset.*
/bin/rm -rfv /usr/local/outset
/usr/sbin/pkgutil --forget com.github.outset

#remove Outset files
/bin/echo "********************************* Removing Outcast files"
/bin/rm -rf "/usr/local/outset"

#remove MacHQ WiFi profile
/bin/echo "********************************* Removing MacHQ WiFi profile"
/usr/bin/profiles -R -p com.machq.A84EA65A-F042-40D5-A9DE-E503F5215357


#remove MacHQ Screen Saver profile
/bin/echo "********************************* Removing MacHQ screensaver profile"
/usr/bin/profiles -R -p com.machq.screensaver

#remove MacHQ Homepage profile
/bin/echo "********************************* Removing MacHQ homepage profile"
/usr/bin/profiles -R -p com.machq.profile.safari

#remove Skip Data and Privacy profile
/bin/echo "********************************* Removing Skip Data and Privacy profile"
/usr/bin/profiles -R -p com.github.93de3086-a916-4c08-8139-aa6b43986067.alacarte

#remove Skip iCloud Setup profile
/bin/echo "********************************* Removing Skip iCloud Setup profile"
/usr/bin/profiles -R -p com.github.c8d04bb6-91ca-4bc9-a5d7-c636fe132846.alacarte

#remove Skip Siri Setup profile
/bin/echo "********************************* Removing Skip Siri Setup profile"
/usr/bin/profiles -R -p com.github.730571bc-0591-41d4-bc15-43e12b4c74cd.alacarte

#remove Skip TouchID Setup profile
/bin/echo "********************************* Removing Skip TouchID Setup profile"
/usr/bin/profiles -R -p com.github.d53c8667-5493-4e37-abf4-ddf8ebe3e06f.alacarte

#remove all profiles
#/bin/echo "********************************* Removing all profiles"
#/usr/bin/profiles remove -forced -all

#reset power settings
/bin/echo "********************************* Removing MacHQ power settings"
/usr/bin/pmset restoredefaults
/usr/bin/pmset repeat cancel

# remove machq /usr/local folder
/bin/echo "********************************* Removing /usr/local/mhq/"
/bin/rm -rf /usr/local/mhq/

# remove this script & root user .profile
/bin/echo "********************************* Removing this script"
/bin/rm "$0"
/bin/rm /private/var/root/.profile
/bin/rm /private/var/root/.bashrc

# clear any nvram arguments
/bin/echo "********************************* Clearing nvram arguments"
/usr/sbin/nvram boot-args=""

# shutdown the computer
/sbin/shutdown -h now
