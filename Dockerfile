FROM prom/prometheus:v2.39.2

WORKDIR /opt/app
COPY ./config/prometheus.yml .
COPY ./docker_entrypoint.sh .
ENTRYPOINT [ "./docker_entrypoint.sh" ]
