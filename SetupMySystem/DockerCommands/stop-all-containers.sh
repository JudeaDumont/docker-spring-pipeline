set -e
docker stop $(docker ps -q) || :