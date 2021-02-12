docker-compose -f docker-compose.yml stop

../mvnw package -f pom.xml -DskipTests

input="Dockerfile"
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

docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml --project-name rest up