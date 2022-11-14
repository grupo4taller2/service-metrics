#!/bin/sh
sed -i -e "s/SERVICE_TRIPS_REMOTE_URL/$SERVICE_TRIPS_REMOTE_URL/" ./prometheus.yml
sed -i -e "s/localhost:PORT/localhost:$PORT/" ./prometheus.yml
cat prometheus.yml
/bin/prometheus --config.file=prometheus.yml --web.listen-address=:$PORT