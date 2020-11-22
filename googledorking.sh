#!/bin/bash
# Autor : Slowkep.

if [ $# -gt 2 ]; then
	echo "Uso: ./script.sh <domain>"
	echo "Example: ./script.sh yahoo.com"
	exit 1
fi

pwd=$(pwd)

echo -e "[+] \e[1;36m Dorking \e[0m [+]"

firefox https://www.google.com/search?q="''@$1''"-"$1" 2>/dev/null &
firefox https://www.google.com/search?q="link:$1" 2>/dev/null
firefox https://www.google.com/search?q="filetype:xls OR filetype:xlsx site:$1" 2>/dev/null &
firefox https://www.google.com/search?q="filetype:ppt OR filetype:pptx site:$1" 2>/dev/null 
sleep 30
firefox https://www.google.com/search?q="filetype:doc OR filetype:docx site:$1" 2>/dev/null 
firefox https://www.google.com/search?q="filetype:xls OR filetype:ppt OR filetype:doc site:$1" 2>/dev/null
firefox https://www.google.com/search?q="filetype:xlsx OR filetype:pptx OR filetype:docx site:$1" 2>/dev/null
firefox https://www.google.com/search?q="filetype:pdf site:$1" 2>/dev/null
sleep 30
firefox https://www.google.com/search?q="filetype:rtf site:$1" 2>/dev/null
firefox https://www.google.com/search?q="filetype:csv site:$1" 2>/dev/null
firefox https://web.archive.org/web/*/"$1" 2>/dev/null
firefox https://search.carrot2.org/#/search/web/$1/folders 2>/dev/null
sleep 30
firefox https://crt.sh/?q=$1 2>/dev/null
firefox https://www.google.com/search?q="site:$1 inurl:admin filetype:php" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 inurl:login" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 filetype:wab" 2>/dev/null
sleep 30
firefox https://www.google.com/search?q="site:$1 inurl:nuke filetype:sql" 2>/dev/null
firefox https://www.google.com/search?q="cache: $1" 2>/dev/null

echo -e "[+] \e[1;36m Done \e[0m [+]"

echo -e "[+] \e[1;36m ----------------------------------------------------- \e[0m [+]"

echo -e "[+] \e[1;36m SQLDump Detect \e[0m [+]"

firefox https://www.google.com/search?q="site:$1 filetype:sql password" 2>/dev/null &
firefox https://www.google.com/search?q="inurl:$1 filetype:sql" 2>/dev/null
sleep 30
firefox https://www.google.com/search?q="site:$1 filetype:sql "IDENTIFIED BY" -cvs" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 filetype:sql "DUMPING DATA FOR TABLE" -cvs" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 filetype:sql "Dumping data for table" -cvs" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 filetype:sql "mysql dump" -cvs" 2>/dev/null
sleep 30
firefox https://www.google.com/search?q="site:$1 filetype:txt "phpMyAdmin MySQL-Dump" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 "phpMyAdmin MySQL-DUMP" "INSERT INTO" - "the"" 2>/dev/null

echo -e "[+] \e[1;36m Done \e[0m [+]"

echo -e "[+] \e[1;36m ----------------------------------------------------- \e[0m [+]"

echo -e "[+] \e[1;36m Database Detection ColdFusion - Microsoft Access user databases - Microsoft Access e-mail databases - Microsoft Access backup databases - Microsoft Access forum databases - ASP-Nuke databases - Microsoft Access user profile databases - Microsoft Access database connection string search - Microsoft Access administration databases \e[0m [+]"

firefox https://www.google.com/search?q="filetype:cfm site:$1" 2>/dev/null &
firefox https://www.google.com/search?q="site:$1 filetype:mdb inurl:users.mdb" 2>/dev/null
sleep 30
firefox https://www.google.com/search?q="site:$1 inurl:email" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 inurl:backup" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 filetype:mdb" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 inurl:forum" 2>/dev/null
sleep 30
firefox https://www.google.com/search?q="site:$1 inurl:db" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 inurl:profiles" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 filetype:asp" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 filetype:aspx" 2>/dev/null
sleep 30
firefox https://www.google.com/search?q="site:$1 allinurl:admin" 2>/dev/null
echo -e "[+] \e[1;36m Done \e[0m [+]"

echo -e "[+] \e[1;36m ----------------------------------------------------- \e[0m [+]"

echo -e "[+] \e[1;36m Web Servers, Login Portals, Network Hardware \e[0m [+]"

firefox https://www.google.com/search?q="site:$1 intitle:VNC viewer for java" 2>/dev/null &
firefox https://www.google.com/search?q="site:$1 intitle:Network Print Server filetype:shtm" 2>/dev/null
sleep 30
firefox https://www.google.com/search?q="site:$1 allinurl:index.htm?cus?audio" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 intitle:Active Webcam Page" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 intitle:toshiba network camera - User Login" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 intitle:Router" 2>/dev/null
sleep 30
firefox https://www.google.com/search?q="site:$1 inurl:netscape.ini" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 inurl:ini" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 inurl:explorer.cfm" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 intext:credit" 2>/dev/null
sleep 30
firefox https://www.google.com/search?q="site:$1 filetype:log" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 intitle:index of inurl:ftp" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 inurl:ftp" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 allintext:password filetype:log" 2>/dev/null
firefox https://www.google.com/search?q="site:$1 inurl:email.xls" 2>/dev/null

echo -e "[+] \e[1;36m Done \e[0m [+]"

echo -e "[+] \e[1;36m ----------------------------------------------------- \e[0m [+]"

exit 1
