#!/bin/bash
set -x

#WEB APP SCAN ID = 6700722

USERNAME=aenet2nm
PASSWD=ae123

echo $USERNAME; echo $PASSWD

##curl -k -u "$USERNAME:$PASSWD" -H "content-type: text/xml" https://qualysguard.qg2.apps.qualys.com/qps/rest/3.0/search/was/webapp -X "GET" -L

#curl -u $USERNAME:$PASSWD -H "X-Requested-With: Curl" "https://qualysguard.qg2.apps.qualys.com/api/2.0/fo/scan/?action=list&echo_request=1&show_ags=1&show_op=1"
#curl -u $USERNAME:$PASSWD -d "action=launch&template_id=143409&output_format=pdf" -H "X-Requested-With: Curl" "https://qualysguard.qg2.apps.qualys.com/api/2.0/fo/report/" 
#curl -u $USERNAME:$PASSWD -H "X-Requested-With: Curl" "https://qualysguard.qg2.apps.qualys.com/api/2.0/fo/asset/host/?action=list&echo_request=1" -L
#curl -u $USERNAME:$PASSWD -H "X-Requested-With: Curl" "https://qualysguard.qg2.apps.qualys.com/api/2.0/fo/appliance/?action=list&echo_request=0"
#curl -u $USERNAME:$PASSWD -H "X-Requested-With: Curl" "https://qualysguard.qg2.apps.qualys.com/api/2.0/fo/report/?action=fetch&id=143409" -L
#curl -X POST -H X-Requested-With:POSTMAN -u $USERNAME:$PASSWD action=list https://qualysapi.qualys.com/api/2.0/fo/report/


case $1 in  
   aetv.1)
       curl -u $USERNAME:$PASSWD "https://qualysguard.qg2.apps.qualys.com/search/am/awsassetdataconnector?fields=id,defaultTags.*.*.id"
       ;;
   aetv.2)
      curl -u $USERNAME:$PASSWD -H "X-Requested-With: Curl" "https://qualysguard.qg2.apps.qualys.com/api/2.0/fo/appliance/?action=list&echo_request=1"
       ;;
   aetv.3)  
      #curl -u "$USERNAME:$PASSWD" -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysguard.qg2.apps.qualys.com/qps/rest/2.0/search/am/hostasset" < /Users/gtaylor/qualys/file.xml
      curl -vv -u aenet2nm:ae123 "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/count/was/webapp" 
      ;;  
   aetv.4)  
      curl -u "$USERNAME:$PASSWD" "https://qualysguard.qg2.apps.qualys.com/qps/rest/2.0/get/am/awsassetdataconnector/50803" 
      ;;  
   aetv.5)  
      curl -u "$USERNAME:$PASSWD" "https://qualysguard.qg2.apps.qualys.com/qps/rest/2.0/count/am/hostasset" 
      ;;  
   aetv.6)  
      curl -u "$USERNAME:$PASSWD" -H "content-type: text/xml" "https://qualysguard.qg2.apps.qualys.com/api/2.0/fo/asset/host/?action=list&echo_request=1" 
      ;;  
  *) 
	#echo "usage: launch aetv.3" ;; 
 esac 
 exit 0
