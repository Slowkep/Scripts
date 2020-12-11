#!/bin/bash
if [ $# -gt 2 ]; then
        echo "Usage: ./script.sh <domain>"
        echo "Example: ./script.sh yahoo.com"   
        exit 1
fi
wget $1
sleep 10
grep "href=" index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | sort -u >> list.txt

for url in $(cat list.txt); do host $url; done >> hosts.txt 

#cat hosts.txt | sort -u >> hostsorted.txt

exit

