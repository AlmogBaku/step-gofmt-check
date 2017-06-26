#!/bin/sh
set -e

info "Verify code formatting with gofmt"

FILES=$(gofmt -l `find . -type f -name "*.go" | grep -v vendor | grep -v .glide`)
if [[ ! -z "$FILES" ]]; then
  echo The following files aren\'t formatted well: $'\n' $FILES
  exit 1
fi
