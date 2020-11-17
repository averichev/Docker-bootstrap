#!/usr/bin/env bash

export ip=$(ip addr show docker0 | grep inet | awk '{print $2}' | head -n 1 | awk -F "/" '{print $1}')

declare -a known_commands=("build" "up" "down" "console")

function contains() {
    local n=$#
    local value=${!n}
    for ((i=1; i < $#; i++)) {
        if [[ "${!i}" == "${value}" ]]; then
            echo "y"
            return 0
        fi
    }
    echo "n"
    return 1
}

if [[ $(contains "${known_commands[@]}" "$1") == "n" ]]
  then
    echo "Command is not supplied. Usage: docker-cli.sh [build|up|down|console]"
    exit
fi

command=$1

if [[ "$command" == "build" ]]; then
    docker build -t ubuntu ./containers/ubuntu/
    docker build -t console ./containers/console/
fi

if [[ "$command" == "up" ]]; then
    docker-compose up -d --remove-orphans

    echo "IP: ${ip}"
fi

if [[ "$command" == "down" ]]; then
    docker-compose down --remove-orphans
fi

if [[ "$command" == "console" ]]; then
    docker-compose run -e UID=$(id -u) -e GID=$(id -g)  console bash
fi
