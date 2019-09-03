#!/bin/bash

sudo apt-get remove -y docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#sudo docker build -t onaio/opensrp --build-arg opensrp_server_tag=mvacc_vaccine_api --build-arg couchdb_username=rootuser --build-arg couchdb_password=adminpass --build-arg mysql_opensrp_user=opensrp --build-arg mysql_opensrp_password=opensrp --build-arg mysql_openmrs_user=openmrs --build-arg mysql_openmrs_password=openmrs --build-arg redis_password=reallylongreallylongpass --build-arg postgres_opensrp_user=opensrp_admin --build-arg postgres_opensrp_password=admin .
#echo -e "#!/bin/sh \nPOSTGRES_MAIN_PASSWORD=opensrp \nPOSTGRES_OPENSRP_TABLESPACE_DIR=/opt/postgresql \nMYSQL_ROOT_PASSWORD=opensrp" >> .entry_point_env 
#sudo docker run -d --name='opensrp' --env-file .entry_point_env -v opensrp_migrations:/etc/migrations -v opensrp_couchdb:/usr/local/var/lib/couchdb -v opensrp_couchdb_lucene:/opt/couchdb-lucene/indexes -v opensrp_mysql:/var/lib/mysql -v opensrp_redis:/data -v opensrp_postgres:/var/lib/postgresql/data -v opensrp_postgres_tablespaces:/opt/postgresql -p 9090:8080 -p 9091:8081 -p 3306:3306 onaio/opensrp 
#sudo docker pull phpmyadmin/phpmyadmin
#sudo docker run --name myadmin -d --link opensrp:db -p 8080:80 phpmyadmin/phpmyadmin
