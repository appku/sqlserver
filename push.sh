#!/bin/sh

# run in script location
cd $(dirname "$(realpath "$0")")
APPKU_SQLSERVER_VERSION=$(head -1 ./VERSION)
if [[ -z "$1" || "$1" == "sqlserver" || "$1" == "latest" ]]; then
    echo "Pushing SQL Server v$APPKU_SQLSERVER_VERSION..."
    docker push appku/sqlserver:latest
    docker push appku/sqlserver:$APPKU_SQLSERVER_VERSION
fi