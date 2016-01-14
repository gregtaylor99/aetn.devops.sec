#!/bin/bash
set -x

#WEB APP SCAN ID =  16590753 16537651 - SCHEDULE 1
#WEB APP SCAN ID =  16590749 15764832 - SCHEDULE 2
#WEB APP SCAN ID =  16590752 15764835 - SCHEDULE 3
#WEB APP SCAN ID =  16537651 15764836 - SCHEDULE 4
#WEB APP SCAN ID =  15764836 - SCHEDULE 5

USERNAME=aenet2nm
PASSWD="Aetn@105mph!"

echo $USERNAME; echo $PASSWD

case $1 in  
   CNT)
      curl -vv -u $USERNAME:$PASSWD "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/count/was/webapp" 
       ;;
   NEW)
      curl -u $USERNAME:$PASSWD -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/create/was/webapp/" < c2.xml
       ;;
   DEL)
      curl -u $USERNAME:$PASSWD -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/delete/was/webapp/" < file.xml
       ;;
   UP.1)  
      curl -u $USERNAME:$PASSWD -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/update/was/webapp/16590753" < update-batch1.xml
      ;;  
   UP.2)  
      curl -u $USERNAME:$PASSWD -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/update/was/webapp/16590749" < update-batch2.xml
      ;;  
   UP.3)  
      curl -u $USERNAME:$PASSWD -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/update/was/webapp/16590752" < update-batch3.xml
      ;;  
   UP.4)  
      curl -u $USERNAME:$PASSWD -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/update/was/webapp/16537651" < update-batch4.xml
      ;;  
   UP.5)  
      curl -u $USERNAME:$PASSWD -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/update/was/webapp/15764836" < update-batch5.xml
      ;;  
   UP.11)  
      curl -u aenet2nm:Aetn@105mph! -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/update/was/webapp/16590753" < update-batch11.xml
      ;;  
   UP.12)  
      curl -u $USERNAME:$PASSWD -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/update/was/webapp/16590749" < update-batch12.xml
      ;;  
   UP.13)  
      curl -u $USERNAME:$PASSWD -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/update/was/webapp/16590752/" < update-batch13.xml
      ;;  
   UP.14)  
      curl -u $USERNAME:$PASSWD -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/update/was/webapp/16537651" < update-batch14.xml
      ;;  
   UP.21)  
      curl -u $USERNAME:$PASSWD -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/update/was/webapp/16590753" < update-batch21.xml
      ;;  
   UP.22)  
      curl -u $USERNAME:$PASSWD -H "content-type: text/xml" -X "POST" --data-binary @- "https://qualysapi.qg2.apps.qualys.com/qps/rest/3.0/update/was/webapp/16590749" < update-batch22.xml
      ;;  
  *) 
	echo "usage: q-WS.sh UP.3" ;; 
 esac 
 exit 0
