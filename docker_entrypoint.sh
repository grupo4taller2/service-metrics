#!/bin/sh
sed -i -e "s/SERVICE_TRIPS_REMOTE_URL/$SERVICE_TRIPS_REMOTE_URL/" ./prometheus.yml
sed -i -e "s/PORT/$PORT/" ./prometheus.yml
/bin/prometheus --config.file=prometheus.yml