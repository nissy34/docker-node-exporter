FROM prom/node-exporter:latest

ENV NODE_EXPORTER_BIN=/bin/node_exporter

COPY ./rootfs /
USER root

ENTRYPOINT  [ "/docker-entrypoint.sh" ]
CMD [ "/bin/node_exporter" ]
