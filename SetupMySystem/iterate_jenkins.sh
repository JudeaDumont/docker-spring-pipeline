set -e
docker stop jenkins-blueocean || :
docker image pull docker:dind

docker network create jenkins || :

cd ../JenkinsContainer

./build-jenkins.sh
./run-jenkins.sh

docker container exec -it jenkins-blueocean cat /var/jenkins_home/secrets/initialAdminPassword