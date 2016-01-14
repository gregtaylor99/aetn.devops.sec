#!/bin/bash
set -x

RUNDIR=/Users/gtaylor/SECURITY/nessus

echo $RUNDIR

alt_targets="172.16.41.189,172.16.20.77";
scan_id="54";

nessushost=cloud.tenable.com; echo $nessushost

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


token=$(sed -e 's/{//g;s/}//g;s/"//g' <<<$(curl -k -X POST -d '{"username":"devops@aenetworks.com","password":"Aetn@105mph!"}' -H "Content-Type: application/json" https://cloud.tenable.com/session) | awk -F ':' '{print $2}')

echo $token

curl -X POST -d '{"scan_id":'$scan_id', "alt_targets"='$alt_targets'}' -H "X-Cookie: token=$token" -H 'Content-Type: application/json' -H "X-ApiKeys: accessKey=ce92d241a036dd6c060afd33686c09d2d53ef99fd1532e70faf6d079568e5fc2; secretKey=6ebe8e7217373cc9c61f211d0a8ef43d42453cac14c2299e41d74df60bc0ae93" https://{$nessushost}/scans/{$scan_id}/launch

### UNCOMMENT THIS LINE TO CHANGE THE IP TARGETS FOR SCAN_ID #54 
#curl -X POST -d '{"scan_id":"54", alt_targets:{$alt_targets}}' -H "X-ApiKeys: accessKey=ce92d241a036dd6c060afd33686c09d2d53ef99fd1532e70faf6d079568e5fc2; secretKey=6ebe8e7217373cc9c61f211d0a8ef43d42453cac14c2299e41d74df60bc0ae93" https://{$nessushost}/scans/{$scan_id}/launch

### UNCOMMENT THIS LINE TO GET LISTING OF SCANS
###curl -k -X POST -H "X-Cookie: token=$token" -H 'Content-Type: application/json' -d '{"uuid": "0625147c-30fe-d79f-e54f-ce7ccd7523e9b63d84cb81c23c2f", "settings": {"name": "AsCentosTest", "AsCentosTest": "Scan Description", "text_targets: $alt_targets"}' https://{$nessushost}/scans
