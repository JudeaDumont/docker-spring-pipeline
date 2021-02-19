#!/bin/bash
set -e
source DockerCommands/stop-all-business-containers.sh

cd ../rest || exit

source iterate-run-tests.sh
