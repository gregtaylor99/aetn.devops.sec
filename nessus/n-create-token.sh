#!/bin/bash

set -x;
#token="00cfd8bfe31fdf7f43e32e000e5e363738f8e89d56841e09";
accessKey="ce92d241a036dd6c060afd33686c09d2d53ef99fd1532e70faf6d079568e5fc2";
secretKey="6ebe8e7217373cc9c61f211d0a8ef43d42453cac14c2299e41d74df60bc0ae93";

nessushost=cloud.tenable.com; 

#echo $nessushost

#echo $scan_id;
#echo $accessKey;
#echo $secretKey;
#echo $nessushost;
#_now="$(sed -e 's/\//_/g;s/:/_/g' <<<$(date +'%D_%T'))"
#echo $_now
 

token=$(sed -e 's/{//g;s/}//g' <<<$(curl -k -X POST -d '{"username":"devops@aenetworks.com","password":"Aetn@105mph!"}' -H "Content-Type: application/json" https://cloud.tenable.com/session) | awk -F ':' '{print $2}')
#token="$(sed -e 's/"token"://g;' <<<$(`curl -k -X POST -d '{"username":"devops@aenetworks.com","password":"Aetn@105mph!"}' -H "Content-Type: application/json" https://cloud.tenable.com/session | awk -F ':' '{print $2}'`))" 

#perl -p -e "s/\"//g" $token
#sed "s/greg/$token/g" 
echo $token
