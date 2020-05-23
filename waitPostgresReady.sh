 #!/bin/bash 
         COUNTER=0
         while [ $COUNTER -lt 2 ]; do
		sleep 10s
             COUNTER=$(docker logs postgres 2>&1|grep -c 'database system is ready to accept connections')
             echo "The counter is $COUNTER"
         done
         