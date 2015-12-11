#!/bin/bash

# Get the boot volume name
boot_vol=$(bless --getBoot)

# Get the device id for the boot volume
boot_disk=$(diskutil info "${boot_vol}" | sed '/^ *Volume Name: */!d;s###')

# Get the drive size from system profiler & get the rounded version
raw_size=$(system_profiler SPSerialATADataType | sed '/^ *Capacity: */!d;s###' | awk '{print $1}' | head -n 1)
round_size=$(echo "${raw_size}" | awk '{print int($1+0.5)}')

# Get the drive size from Core Storage & get the rounded version
cs_size=$(diskutil cs list | awk '/Size/{print}' | sed -n -e 1p | tr '()' '\\n' | head -2 | tail -1 | awk '{print $1}')
#cs_round_size=$(echo "${cs_size}" | awk '{print int($1+0.5)}')

# Test for fusion drive
fusion=$(diskutil list | grep Fusion)

# Test for SSD drive
ssd=$(system_profiler SPSerialATADataType | grep SSD)
ssd_size=$(system_profiler SPSerialATADataType | grep "Model: APPLE SSD" | awk '{print $4}' | sed 's/[^1-9][^0-9]*//g')

# Determine the storage unit GB/TB - basically assumes anything less than 10 must be TB else GB
if [ "${round_size}" -lt 10 ]; then
     unit="TB"
else
     unit="GB"
fi


if [ -z "${fusion}" ]; then
    if [ -z "${ssd}" ]; then
	    # standard hdd
        diskutil rename "${boot_disk}" "${round_size}${unit} HD"
    else
	    # ssd, non-fusion
        diskutil rename "${boot_disk}" "${ssd_size}${unit} SSD"
    fi
else
    # fusion, so use core storage size. Do we need rounded cs size?
    diskutil rename "${boot_disk}" "${cs_size}${unit} Fusion HD"
fi

# Show icons for hard drives, servers, and removable media on the desktop
#defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
#defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
#defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

exit 0