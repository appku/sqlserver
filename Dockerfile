FROM mcr.microsoft.com/mssql/server:2022-latest

USER root
RUN groupadd appku && usermod -aG appku mssql

USER mssql