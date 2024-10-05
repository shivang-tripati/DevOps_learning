#!/bin/bash

function File {
    # think you are inside the file
    # Change here
    echo $#
}

#Do not change anything

if [ ! $# -lt 4 ]; then
	File $*
	exit 0
fi

