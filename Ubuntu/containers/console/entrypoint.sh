#!/usr/bin/env bash
set -e

echo "${GID}"

groupmod -g ${GID} hostuser
usermod -u ${UID} hostuser  > /dev/null 2>&1

exec runuser -u hostuser -- "$@"
