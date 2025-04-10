FROM debian:stable-slim

LABEL maintainer="andika"
LABEL image="andika/pdns"
LABEL version="v1"

RUN apt-get update && \
    apt-get install -y curl gnupg2 lsb-release

RUN echo "deb [arch=amd64] http://repo.powerdns.com/debian $(lsb_release -cs)-auth-45 main" > /etc/apt/sources.list.d/pdns.list && \
    curl https://repo.powerdns.com/FD380FBB-pub.asc | apt-key add -

RUN apt-get update && \
    apt-get install -y pdns-server pdns-backend-mysql && \
    apt-get clean

COPY pdns.conf /etc/powerdns/pdns.conf

EXPOSE 53/udp
EXPOSE 53/tcp
CMD ["pdns_server", "--daemon=no", "--guardian=no"]
