FROM faicker/frr-base:latest
LABEL maintainer "Faicker Mo <faicker.mo@gmail.com>"

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ENTRYPOINT ["/usr/bin/supervisord"]
