#!/bin/bash
if [[ -z $1 ]];
then 
    echo "No parameter passed."
else
    echo "Parameter passed = $1"
    ip=$1
    #nmap ${ip} -PN -p ssh | grep open
    #If you're interested in the actual state of the ssh-port, you can substitute grep open with egrep 'open|closed|filtered'
    res=$(nmap ${ip} -PN -p ssh | egrep 'open|closed|filtered')
    while true
    do
        echo $res
    done
fi


