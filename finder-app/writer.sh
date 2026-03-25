#!/bin/bash

writefile="$1"
writestr="$2"

if [ "$#" -ne 2 ]; then
	echo "ERROR: MISSING PARAMETERS"
	exit 1
fi

writedir="$(dirname "$writefile")"
mkdir -p "$writedir"

if [ "$?" -ne 0 ]; then
	echo "ERROR CREATING THE DIRECTORY PATH"
	exit 1
fi

echo "$writestr" > "$writefile"

if [ "$?" -ne 0 ]; then
	echo "ERROR: FILE NOT CREATED"
	exit 1
fi
