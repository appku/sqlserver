FROM mcr.microsoft.com/mssql/server:2022-latest

USER root
RUN apt-get update \
    && apt-get install -y realmd krb5-user software-properties-common python3-software-properties packagekit \
        adcli libpam-sss libnss-sss sssd sssd-tools
RUN groupadd -r -g 7585 appku \
    && usermod -aG appku mssql

USER mssql