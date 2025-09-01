#!/usr/bin/env bash

if [ -z "$1" ]
  then
    echo "No argument supplied"
    echo "USAGE: backup.sh <file or folder to backup>"
fi

mkdir -p $BACKUPS

sudo cp -r "$1" "$BACKUPS/$1"
