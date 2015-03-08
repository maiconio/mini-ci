#!/bin/bash

mkdir --parents /home/docker/go/src/github.com/$APP
cd /home/docker/go/src/github.com/$APP
git clone https://github.com/$APP.git /home/docker/go/src/github.com/$APP
git checkout -q $COMMIT

echo "go build"
go build

echo "go test -v"
go test -v

echo $?
