#!/bin/bash
echo 'Aliases======================================'
for key in "${!BASH_ALIASES[@]}"; do
    printf '%s=%q\n' "$key" "${BASH_ALIASES[$key]}"
done

echo '============================================='

set
set -e
./DockerCommands/stop-all-business-containers.sh || :

cd ../rest || exit

./iterate-run-tests.sh
