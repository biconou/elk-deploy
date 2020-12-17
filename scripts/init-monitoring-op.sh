#!/bin/bash

# Arrêt et nettoyage de logstash
docker-compose stop logstash
docker-compose rm --force logstash

# Suppression de l'index monitoring-op
curl -XDELETE localhost:9200/monitoring-op

# Init des fichiers de données
rm logstash/data/plugins/inputs/file/.since*
> logstash/data/sink-monitoring-op-mbe
> logstash/data/sink-monitoring-op-savoye

# Démarrage de logstash
docker-compose up -d logstash

# Alimentation des données mb
cat data/monitoring-op/mbe_01_25112020_v2.csv >> logstash/data/sink-monitoring-op-mbe

# On attend que l'index existe
./scripts/wait-monitoring-op.sh