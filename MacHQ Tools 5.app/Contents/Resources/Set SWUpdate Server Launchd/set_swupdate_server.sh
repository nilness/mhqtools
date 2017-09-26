#!/bin/sh

# Include to check for networking
# found at http://blog.slaunchaman.com/2010/07/01/how-to-run-a-launchdaemon-that-requires-networking/
# Runs some common setup actions for shell scripts. Includes the "CheckForNetwork" function
/etc/rc.common

sleep 30

CheckForNetwork

while [ "${NETWORKUP}" != "-YES-" ]
do
        sleep 5
        NETWORKUP=
        CheckForNetwork
done


echo "Checking external IP"
/usr/bin/curl -s http://icanhazip.com/

#compare the external IP against our store IP addresses until we find a match else remove any settings and exit
case $(/usr/bin/curl -s http://icanhazip.com/) in
$(/usr/bin/dig +short 001.machq.com) ) SWUpdateServer="netboot-station.local:8088";;
$(/usr/bin/dig +short 002.machq.com) ) SWUpdateServer="xserve.local:8088";;
$(/usr/bin/dig +short 003.machq.com) ) SWUpdateServer="servercdr.local:8088";;
* ) /usr/bin/syslog -s -l 3 "Unrecognized external IP"; /usr/bin/defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL; echo "Unrecognized external IP. Setting update server to Apple default."; exit 1;;
esac	

echo "We're using update server at ${SWUpdateServer}"

#we've matched the external IP
case $(/usr/bin/sw_vers -productVersion | /usr/bin/awk -F . '{print $2}') in
4) URL="http://${SWUpdateServer}/index.sucatalog" ;;   
5) URL="http://${SWUpdateServer}/index-leopard.merged-1.sucatalog" ;;      
6) URL="http://${SWUpdateServer}/index-leopard-snowleopard.merged-1.sucatalog" ;;    
7) URL="http://${SWUpdateServer}/index-lion-snowleopard-leopard.merged-1.sucatalog" ;;
8) URL="http://${SWUpdateServer}/index-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog" ;;
9) URL="http://${SWUpdateServer}/index-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog" ;;
10) URL="http://${SWUpdateServer}/index-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog" ;;
11) URL="http://${SWUpdateServer}/index-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog" ;;
12) URL="http://${SWUpdateServer}/index-10.12-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog" ;;
13) URL="http://${SWUpdateServer}/index-10.13-10.12-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog" *) /usr/bin/syslog -s -l 3 "Unrecognized client OS"; exit 1 ;;
esac

/usr/bin/defaults write /Library/Preferences/com.apple.SoftwareUpdate CatalogURL "${URL}"

/usr/bin/syslog -s -l 5 "Set Software Update Server to ${URL}"
