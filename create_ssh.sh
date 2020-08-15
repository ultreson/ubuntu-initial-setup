#!/bin/bash
# https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
# ./create_ssh me@example.com mygit <-- creates ~/.ssh/mygit_rsa.pub and ~/.ssh/mygit_rsa

if [ -n "$1" ]; then
    COMMENT=$1
else
    COMMENT=$USER
fi

if [ -n "$2" ]; then
    IDENTIFIER=$2
else
    IDENTIFIER=$(date +"%Y%m%dT%H%M%S")
fi

if [ -n "$3" ]; then
    TARGET=$3
else
    TARGET=$HOME/.ssh
fi

ssh-keygen -t rsa -b 4096 -C "${COMMENT}" -f "${TARGET}/${IDENTIFIER}_rsa"

cat "${TARGET}/${IDENTIFIER}_rsa.pub"