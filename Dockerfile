FROM ubuntu:16.04

MAINTAINER Jon Davis "jon@snowulf.com"

RUN apt-get -qq update \
  && apt-get -y install curl \
  && apt-get clean autoclean \
  && apt-get autoremove -y --purge \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN curl -sSL https://get.docker.com/ | sh