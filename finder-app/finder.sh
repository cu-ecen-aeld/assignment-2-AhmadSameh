#!/bin/bash

args=("$@")

if [ $# -lt 2 ]; then
    echo "ERROR: Some arguments were not specified!"
    exit 1
else
    filesdir=${args[0]}
    searchstr=${args[1]}
    if [ ! -d $filesdir ]; then
        echo "ERROR: Specified directory does not exist!"
        exit 1
    else
        X=$(find "$filesdir" -type f | wc -l)
        Y=$(grep -r "$searchstr" "$filesdir" | wc -l)
        echo "The number of files are $X and the number of matching lines are $Y"
    fi
fi