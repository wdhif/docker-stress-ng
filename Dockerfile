FROM ubuntu:xenial
LABEL maintainer='Wassim DHIF <wassimdhif@gmail.com>'

RUN apt-get update && apt-get install -y --no-install-recommends stress-ng=0.05.23-1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["stress-ng"]

