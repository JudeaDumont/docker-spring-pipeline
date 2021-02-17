set -e
./DockerCommands/stop-all-business-containers.sh || :

cd ../rest || exit

./iterate-run-tests.sh
