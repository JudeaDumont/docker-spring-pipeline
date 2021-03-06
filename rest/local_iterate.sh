#!/bin/bash
docker-compose -f docker-compose.yml stop

./mvnw package -f pom.xml -DskipTests -q

input="Dockerfile"

########################## Force Docker to Rebuild at a Level YOU Specify ##############################################
#todo: this needs to increment the cachebust instead of just switching it between either, the reason for this is that
#it caches both the 1 and the 11 and then just switches between those two image layers instead of actually making a new image.
while IFS= read -r line
do
  if [[ "$line" == *"ARG CACHEBUST="* ]]; then
    if [[ ${#line} -ge 16 ]]; then
      gsed -i 's/ARG CACHEBUST=.*/ARG CACHEBUST=1/' Dockerfile
      break
    else
      gsed -i 's/ARG CACHEBUST=.*/ARG CACHEBUST=11/' Dockerfile
      break
    fi
  fi
done < "$input"
########################################################################################################################

docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml --project-name rest up -d
