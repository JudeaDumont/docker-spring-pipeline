set -e
docker stop $(docker ps -q) || :
docker system prune -a -f
cd rest || exit
./iterate-run-tests.sh
