docker run \
  --privileged \
  --name jenkins-blueocean \
  --rm \
  --detach \
  --network jenkins \
  --env DOCKER_HOST=unix:///var/run/docker.sock \
  --env DOCKER_CERT_PATH=/certs/client \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  myjenkins-blueocean:1.1