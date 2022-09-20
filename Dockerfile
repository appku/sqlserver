FROM mcr.microsoft.com/mssql/server:2022-latest

USER root

EXPOSE 8080


USER mssql
ENTRYPOINT /bin/bash ./entrypoint.sh