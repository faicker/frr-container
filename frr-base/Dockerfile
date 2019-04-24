ARG DEBVER="jessie"
ARG FRRVER="frr-stable"

FROM debian:${DEBVER}-slim
LABEL maintainer "Faicker Mo <faicker.mo@gmail.com>"

ARG DEBVER
ARG FRRVER
RUN apt update && apt -y install curl
RUN curl -s https://deb.frrouting.org/frr/keys.asc | apt-key add -
RUN echo "deb https://deb.frrouting.org/frr ${DEBVER} ${FRRVER}" | tee -a /etc/apt/sources.list.d/frr.list
RUN apt -y install apt-transport-https && apt update && apt -y install frr frr-pythontools
RUN apt -y install vim-tiny lsof tcpdump traceroute iputils-ping

RUN mkdir -p /var/run/frr
RUN chown frr:frr /var/run/frr

RUN apt-get -y autoremove \
&& apt-get clean \
&& apt-get autoclean \
&& rm -rf /var/lib/apt/lists/*
