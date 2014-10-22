#!/bin/bash

# if there is a parameter then it is the username, otherwise specify a default
if [ "$1" != "" ]; then
    username="$@"
else
    username="mhq"
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
       dscl . -delete /groups/_appserveradm GroupMembership "$username"
       dscl . -delete /groups/_appserverusr GroupMembership "$username"
       dscl . -delete /groups/_lpadmin GroupMembership "$username"
       dscl . -delete /groups/admin GroupMembership "$username"
       dscl . -delete /groups/com.apple.sharepoint.group.1 GroupMembership "$username"
       dscl . -delete /groups/staff GroupMembership "$username"

       dscl . -delete /users/"$username"
       ;;
  [789] | 10) rm /var/db/dslocal/nodes/default/users/"$username".plist
       ;; 
    *) echo "unrecognized system"
       exit
       ;;
esac

# further commands will run in all recognized systems

# delete user folder
rm -rf /Users/"$username"

# remove setup done file so setup runs on boot
rm /var/db/.AppleSetupDone

# remove network configuration files
rm /Library/Preferences/SystemConfiguration/*

# remove tech reset script if present
rm /techreset.sh

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
