FROM faicker/frr-base:latest
LABEL maintainer "Faicker Mo <faicker.mo@gmail.com>"

ADD start-frr.sh /start-frr.sh
RUN chmod a+x start-frr.sh
ENTRYPOINT ["/start-frr.sh"]
