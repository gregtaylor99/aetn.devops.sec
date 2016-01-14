#!/bin/bash

set -x;
echo $1;
token="234c3b44c48e84a0f0220fc79e4b3caf7c09429f1ef867eb";
accessKey="ce92d241a036dd6c060afd33686c09d2d53ef99fd1532e70faf6d079568e5fc2";

secretKey="6ebe8e7217373cc9c61f211d0a8ef43d42453cac14c2299e41d74df60bc0ae93";

scan_id="57";
alt_targets="172.16.41.189,172.16.20.77";

nessushost=cloud.tenable.com; echo $nessushost

echo $scan_id;
echo $accessKey; 
echo $secretKey; 
echo $nessushost;

curl -X POST -d '{"scan_id":'$scan_id', "alt_targets"='$alt_targets'}' -H "X-Cookie: token=$token" -H 'Content-Type: application/json' -H "X-ApiKeys: accessKey=ce92d241a036dd6c060afd33686c09d2d53ef99fd1532e70faf6d079568e5fc2; secretKey=6ebe8e7217373cc9c61f211d0a8ef43d42453cac14c2299e41d74df60bc0ae93" https://{$nessushost}/scans/{$scan_id}/launch

#curl -k -X POST -d '{"username":"devops@aenetworks.com","password":"Aetn@105mph!"}' -H "Content-Type: application/json" https://cloud.tenable.com/session

##curl -k -H "X-Cookie: token=d8e18dc4b926ce8c60c98df81db70b67d3a27652062e6417" "https://{$nessushost}/server/properties"

###curl -k -H 'X-Cookie: token=62fa3db304459db48a5aaf054d0c82b4ad37ef3e8a93c788' https://{$nessushost}/feed

############ PULL ALL TEMPLATES DOWN #################################
#curl -k -H 'X-Cookie: token=62fa3db304459db48a5aaf054d0c82b4ad37ef3e8a93c788' https://{$nessushost}/editor/policy/templates

#curl -k -X POST -H 'X-Cookie: token=62fa3db304459db48a5aaf054d0c82b4ad37ef3e8a93c788' -H 'Content-Type: application/json' -d '{"uuid": "0625147c-30fe-d79f-e54f-ce7ccd7523e9b63d84cb81c23c2f", "settings": {"name": "AsCentosTest", "AsCentosTest": "Scan Description", "text_targets": "172.16.41.189,172.16.20.77"}' https://{$nessushost}/scans

#curl -k -X POST -H "X-Cookie: token=$token" -H 'Content-Type: application/json' -d '{"uuid": "0625147c-30fe-d79f-e54f-ce7ccd7523e9b63d84cb81c23c2f", "settings": {"name": "AsCentosTest", "AsCentosTest": "Scan Description", "text_targets": "$alt_targets"}' https://{$nessushost}/scans
