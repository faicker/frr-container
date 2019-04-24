FROM faicker/frr-base:latest
LABEL maintainer "Faicker Mo <faicker.mo@gmail.com>"

ENV TINI_VERSION v0.14.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

RUN mkdir -p /etc/service/quagga/

COPY zebra.run /etc/service/quagga/
RUN chmod 755 /etc/service/quagga/zebra.run

COPY bgpd.run /etc/service/quagga/
RUN chmod 755 /etc/service/quagga/bgpd.run

COPY entrypoint.sh /runit/entrypoint.sh
RUN chmod +x /runit/entrypoint.sh
ENTRYPOINT ["/tini", "--", "/runit/entrypoint.sh"]
