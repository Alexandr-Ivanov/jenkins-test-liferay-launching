 #!/bin/bash 
         COUNTER=0
         while [  $COUNTER -lt 10 ]; do
             echo The counter is $COUNTER
             let COUNTER=COUNTER+1 
		docker logs postgres|grep -c 'database system is ready to accept connections'
		echo $?
         done
         