#!/bin/bash
echo 'Aliases======================================'
for key in "${!BASH_ALIASES[@]}"; do
    printf '%s=%q\n' "$key" "${BASH_ALIASES[$key]}"
done
alias
echo '============================================='

set
set -e
bash -i DockerCommands/stop-all-business-containers.sh || :

cd ../rest || exit

bash -i iterate-run-tests.sh
