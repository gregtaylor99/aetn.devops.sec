#!/bin/bash
set -x

#WEB APP SCAN ID = 16537651 - SCHEDULE 1
#WEB APP SCAN ID = 15764832 - SCHEDULE 2
#WEB APP SCAN ID = 15764835 - SCHEDULE 3
#WEB APP SCAN ID = 15764836 - SCHEDULE 4
#WEB APP SCAN ID = 15764834 - SCHEDULE 5


USERNAME=aenet2nm
PASSWD=ae123

echo $USERNAME; echo $PASSWD

curl -u "aenet2nm:ae123" -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/create/was/webapp" < scan.xml
