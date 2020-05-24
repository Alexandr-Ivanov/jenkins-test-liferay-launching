docker run -dit -v ~/liferay/logs:/opt/liferay/logs -v ~/liferay/tomcat/logs:/opt/liferay/tomcat-7.0.62/logs -v ~/liferay/deploy:/opt/liferay/deploy -v ~/liferay/keys:/var/opt/cprocsp/keys/root --name liferay --publish 8000:8080 liferay:1.0

COUNTER=0

while [ $COUNTER -lt 1 ]; do
	sleep 30s
        COUNTER=$(docker logs liferay 2>&1|grep -c 'Catalina start')
        echo "The counter is $COUNTER"
done
