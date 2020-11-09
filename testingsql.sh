#!/bin/bash

# Autor : Slowkep.

if [ $# -gt 2 ]; then
        echo "Uso: ./script.sh <url>"
        echo "Example: ./script.sh <url>"
        exit 1
fi

for i in $(cat sqlsql.txt); do echo $1$i & curl $1$i;done >> testingsql1.txt

echo -e "[+] \e[1;36m Buscando resultados \e[0m [+]"
cat testingsql1.txt | grep -n 'admin\|user1\|root\|administrator\|administrador\|user'
echo -e "[+] \e[1;36m Done \e[0m [+]"
