#!/bin/sh

# run in script location
cd $(dirname "$(realpath "$0")")
APPKU_SQLSERVER_VERSION=$(head -1 ./VERSION)
if [[ -z "$1" || "$1" == "sqlserver" || "$1" == "latest" ]]; then
    docker build --build-arg APPKU_SQLSERVER_VERSION=$APPKU_SQLSERVER_VERSION . -t appku/sqlserver:latest -t appku/sqlserver:$APPKU_SQLSERVER_VERSION
fi