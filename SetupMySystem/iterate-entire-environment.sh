#!/bin/bash
for key in "${!BASH_ALIASES[@]}"; do
    printf '%s=%q\n' "$key" "${BASH_ALIASES[$key]}"
done
set
set -e
./DockerCommands/stop-all-business-containers.sh || :

cd ../rest || exit

./iterate-run-tests.sh
