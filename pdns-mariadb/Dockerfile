# File: pdns-mariadb/Dockerfile
FROM debian:stable-slim

LABEL maintainer="andika"
LABEL image="andika/pdns-mariadb"
LABEL version="v1"

ENV MARIADB_ROOT_PASSWORD=rootpass
ENV MARIADB_DATABASE=powerdns
ENV MARIADB_USER=pdns
ENV MARIADB_PASSWORD=pdnspass

RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean

COPY init.sql /docker-entrypoint-initdb.d/init.sql

EXPOSE 3306

CMD ["mysqld"]
