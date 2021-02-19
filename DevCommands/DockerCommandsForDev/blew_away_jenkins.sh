#!/bin/bash
docker container exec -it jenkins-blueocean cat /var/jenkins_home/secrets/initialAdminPassword

docker container exec -u 0 -it jenkins-blueocean bash