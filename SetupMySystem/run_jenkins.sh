set -e
docker image pull docker:dind

docker network create jenkins || :

cd ../JenkinsContainer

./build-jenkins.sh
./run-jenkins.sh