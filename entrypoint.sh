#!/bin/sh

/go/bin/ghz "$@"

# Print helpFunction in case exit code is not 0
if [ $? != 0 ]; then
  /go/bin/ghz -h
  exit 1 # Exit script after printing help
else
  echo "Test ran successfully! Sleeping for 10000 days"
  sleep 10000
fi
