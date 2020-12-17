#!/bin/bash


cat data/monitoring-op/savoye_01_25112020.csv \
  | sed 's/"\(.*\)\s\(.*\)"/\1:\2/' \
  >> logstash/data/sink-monitoring-op-savoye
