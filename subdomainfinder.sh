if [ $# -gt 2 ]; then
	echo "Usage: ./script.sh <domain>"
	echo "Example: ./script.sh yahoo.com"	
	exit 1
fi

if [ ! -d "thirdlevels" ]; then
	mkdir thirdlevels
fi

if [ ! -d "scans" ]; then
	mkdir scans
fi


pwd=$(pwd)

echo "Recolectado subdomains con Sublist3r.."

sublist3r -d $1 -o final.txt

echo $1 >> final.txt

echo "Compiling third-level domains..."
cat domain-test.txt | grep -Po "(\w+\.\w+\.\w+)$" | sort -u >> third-level.txt

echo "Recolectando full third-level domains con Sublist3r..."
for domain in $(cat third-level.txt); do sublist3r -d $domain -o thirdlevels/$domain.txt; cat thirdlevels/$domain.txt | sort -u >> final.txt;done

if [ $# -eq 2 ];
then
	echo "Probando alive host"
	cat final.txt | sort -u | grep -v $2 | httprobe -s -p https:443 | sed 's/https\?:\/\///' |  tr -d ":443" > probed.txt
else
	echo "Probing alive host"
	cat final.txt | sort -u | httprobe -s -p https:443 | sed 's/https\?:\/\///' |  tr -d ":443" > probed.txt
fi


cat probed.txt | sort -u >> checkit.txt

amass enum -d $1 >> amass.txt

diff checkit.txt amass.txt

#echo "scanning for open ports"
#nmap -iL probed.txt -T3 -oA scans/scanned.txt
