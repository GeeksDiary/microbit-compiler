#!/bin/bash
set -e

INPUT=$1

if [ -z $INPUT ]
then
  echo "input is not valid."
  exit 1
fi

python compile.py $INPUT "$(pwd)"
cp micropython.hex /Volumes/MICROBIT/
