#!/bin/bash

echo "rename_hd_by_size.sh - v1.1 ("`date`")"

# Get the boot volume name
boot_vol=$(bless --getBoot)

# Get the device id for the boot volume
boot_disk=$(diskutil info "${boot_vol}" | sed '/^ *Volume Name: */!d;s###')

# Get the drive size from system profiler & round it
sp_size=$(system_profiler SPSerialATADataType | sed '/^ *Capacity: */!d;s###' | awk '{print $1}' | head -n 1 | awk '{print int($1+0.5)}')

echo echo sp_size: ${sp_size}

# Get the drive size from Core Storage
cs_size=$(diskutil cs list | awk '/Size/{print}' | sed -n -e 1p | tr '()' '\n' | head -2 | tail -1 | awk '{print $1}')
cs_round_size=$(echo "${cs_size}" | awk '{print int($1+0.5)}')

echo echo cs_size: ${cs_size}

# Test for fusion drive
fusion=$(diskutil list | grep Fusion)

# Test for Apple SSD drive
apple_ssd=$(system_profiler SPSerialATADataType | grep -i "Apple SSD")

# Get size for SSD drive
if [ -z "${apple_ssd}" ]; then
	ssd_size=${sp_size}
else
	ssd_size=$(system_profiler SPSerialATADataType | grep -i "Model: APPLE SSD" | awk '{print $4}' | sed 's/[^1-9][^0-9]*//g')
fi

echo echo ssd_size: ${ssd_size}

# Test for any SSD drive
ssd=$(system_profiler SPSerialATADataType | grep -i "Medium Type" | awk '{print $3}' | grep Solid)

# Determine the storage unit GB/TB - basically assumes anything less than 10 must be TB else GB
if [ "${sp_size}" -lt 10 ]; then
     unit="TB"
else
     unit="GB"
fi

# Determine the storage medium
if [ -z "${ssd}" ]; then
     final_size="${sp_size}"
     media="HD"
else
     final_size="${ssd_size}"
     media="SSD"
fi


if [ -z "${fusion}" ]; then
        diskutil rename "${boot_disk}" "${final_size}${unit} ${media}"
else
    # fusion, so use core storage size. Do we need rounded cs size?
    diskutil rename "${boot_disk}" "${cs_size}${unit} Fusion HD"
fi

# Show icons for hard drives, servers, and removable media on the desktop
#defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
#defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
#defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

killall Finder

exit 0