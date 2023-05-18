#!/bin/bash

args=("$@")

if [ $# -lt 2 ]; then
    echo "ERROR: Some arguments were not specified!"
    exit 1
else
    writefile=${args[0]}
    writestr=${args[1]}
    directory=$(dirname "$writefile")
    if [ ! -d "$directory" ]; then
        mkdir -p "$directory"
    fi
    echo "$writestr" > $writefile
fi