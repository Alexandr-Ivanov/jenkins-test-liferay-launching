 #!/bin/bash
docker run -d --publish 5432:5432 --name postgres -e POSTGRES_PASSWORD=postgres postgresql:1.0

COUNTER=0

while [ $COUNTER -lt 2 ]; do
	sleep 30s
        COUNTER=$(docker logs postgres 2>&1|grep -c 'database system is ready to accept connections')
        echo "The counter is $COUNTER"
done
         