#!/bin/bash

if [ $1 ]; then
    ip_address=$1
    for i in $(seq 2 254); do
        timeout 1 bash -c "ping -c 1 $1.$i > /dev/null 2>&1" && echo "Host $1.$i - Active" & 
    done;wait
fi
