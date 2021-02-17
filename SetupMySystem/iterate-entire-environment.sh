./DockerCommands/stop-all-containers.sh
docker system prune -a -f
cd rest || exit

./iterate-run-tests.sh
