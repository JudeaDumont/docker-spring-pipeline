set -e
docker rm $(docker stop $(docker ps -a -q --filter ancestor=simplerestcontroller --format="{{.ID}}")) || : # Stops all containers by an image name
docker rm $(docker stop $(docker ps -a -q --filter ancestor=simplerestcontrollertest --format="{{.ID}}")) || : # Stops all containers by an image name
