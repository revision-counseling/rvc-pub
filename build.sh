#!/bin/bash

# build for blogs is just "push them to github"

function errExit {
    echo "ERROR: $*" >&2
    exit 1
}

git add . || errExit 1

git commit -m "sync" || errExit 2

git push || errExit 3


