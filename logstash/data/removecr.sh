#!/bin/bash

#> metrics.csv

export DATA_DIR=`pwd`/../../data/TSE

for dir in `ls ${DATA_DIR}`
do
    for i in `ls ${DATA_DIR}/$dir` 
    do
        echo "Récupération du fichier ${DATA_DIR}/$dir/$i"
        awk -v env_dir="$dir" '{print env_dir" "$1" "$2" "$3}' ${DATA_DIR}/$dir/$i | tr -d '\r' >> metrics.csv 
    done
done
