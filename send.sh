#!/usr/bin/env bash

DATA_DIR=./logstash/data_csv


tail -n +2 ${DATA_DIR}/fr.openfoodfacts.org.products.csv | cut -d'	' -f1,2,8,11,12,13,14,15,16,22,23,27,35 >> ${DATA_DIR}/sink.csv