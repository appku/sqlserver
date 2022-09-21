FROM mcr.microsoft.com/mssql/server:2022-latest

USER root
RUN apt-get update \
    && apt-get install -y realmd krb5-user software-properties-common python3-software-properties packagekit \
        adcli libpam-sss libnss-sss sssd sssd-tools
RUN groupadd -r -g 7585 appku \
    && usermod -aG appku root \
    && usermod -g appku mssql \
    && usermod -aG root mssql

ARG APPKU_SQLSERVER_VERSION=2022
ENV APPKU_SQLSERVER_VERSION=${APPKU_SQLSERVER_VERSION}

USER mssql:appku