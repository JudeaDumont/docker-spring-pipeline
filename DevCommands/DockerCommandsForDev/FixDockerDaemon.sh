#!/bin/bash
service docker status

groups jenkins

service docker start

docker stop jenkins-blueocean
docker rm jenkins-blueocean
docker rmi myjenkins-blueocean:1.1

