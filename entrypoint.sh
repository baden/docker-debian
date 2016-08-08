#!/bin/bash
set -e

if [ $USER_ID ]; then

    #USER_ID=${USER_ID:-0}
    #GROUP_ID=${GROUP_ID:-0}

    groupadd -g $GROUP_ID composer
    useradd -d /home/composer -u $USER_ID -g $GROUP_ID composer
    mkdir -p /home/composer
    chown $USER_ID:$GROUP_ID /home/composer

    exec runuser -u composer "$@"

else

    exec $@

fi

