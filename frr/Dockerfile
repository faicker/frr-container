FROM faicker/frr-base:latest
LABEL maintainer "Faicker Mo <faicker.mo@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
