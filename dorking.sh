#!/bin/bash
# Autor : Slowkep.

if [ $# -gt 2 ]; then
	echo "Uso: ./script.sh <domain>"
	echo "Example: ./script.sh yahoo.com"
	exit 1
fi

if [ ! -d "passive" ]; then
	mkdir passive
fi

pwd=$(pwd)

echo -e "[+] \e[1;36m Ping \e[0m [+]"
ping -c 3 $1 >> passive/ping.txt
echo "Para visualizar el archivo: cat passive/ping.txt"
echo -e "[+] \e[1;36m Done \e[0m [+]"
echo "-------------------------------------------------"
echo -e "[+] \e[1;36m WhatWeb \e[0m [+]"
whatweb -v $1 >> passive/whatweb.txt
echo "Para visualizar el archivo: cat passive/whatweb.txt"
echo -e "[+] \e[1;36m Done \e[0m [+]"
echo "-------------------------------------------------"
#echo -e "[+] \e[1;36m DnsEnum \e[0m [+]"
#dnsenum $1 >> passive/dnsenum.txt
#echo "Para visualizar el archivo: cat passive/dnsenum.txt"
#echo -e "[+] \e[1;36m Done \e[0m [+]"

echo -e "[+] \e[1;36m Dorking \e[0m [+]"
firefox https://www.google.com/search?q="''@$1''"-"$1" 2>/dev/null
firefox https://www.google.com/search?q="link:$1" 2>/dev/null
firefox https://www.google.com/search?q="filetype:xls OR filetype:xlsx site: $1" 2>/dev/null
firefox https://www.google.com/search?q="filetype:ppt OR filetype:pptx site: $1" 2>/dev/null 
firefox https://www.google.com/search?q="filetype:doc OR filetype:docx site: $1" 2>/dev/null 
firefox https://www.google.com/search?q="filetype:xls OR filetype:ppt OR filetype:doc site: $1" 2>/dev/null
firefox https://www.google.com/search?q="filetype:xlsx OR ext:pptx OR filetype:docx site: $1" 2>/dev/null
firefox https://www.google.com/search?q="filetype:pdf site: $1" 2>/dev/null 
firefox https://www.google.com/search?q="filetype:rtf site: $1" 2>/dev/null 
firefox https://www.google.com/search?q="cache: $1" 2>/dev/null 
firefox https://www.google.com/search?q="filetype:csv site: $1" 2>/dev/null
firefox https://web.archive.org/web/*/"$1" 2>/dev/null
firefox https://search.carrot2.org/#/search/web/$1/folders 2>/dev/null
firefox https://crt.sh/?q=$1 2>/dev/null
sleep 2
echo -e "[+] \e[1;36m Done \e[0m [+]"
