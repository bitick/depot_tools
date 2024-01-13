FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean

WORKDIR /opt/

RUN git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git

WORKDIR /opt/depot_tools