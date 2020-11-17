#!/usr/bin/env bash
set -e

uid=${UID}
echo "UID: $uid"
group=${GID}
echo "GID: $group"

if [[ -z "${UID}" ]]; then
    echo "Требуется указать переменную окружения UID"
    exit 1
fi

if [[ -z "${GID}" ]]; then
    echo "Требуется указать переменную окружения GID"
    exit 1
fi

groupmod -g ${GID} hostuser
usermod -u ${UID} hostuser  > /dev/null 2>&1

exec runuser -u hostuser -- "$@"
