#!/bin/bash

OUT_FILE="../logstash/data/metrics.csv"
> ${OUT_FILE}

while :
do
    NBPROC=`ps -ef | wc -l`
    DATE=`date +%Y-%m-%d:%H:%M:%S`
    echo "${DATE} ${NBPROC}" >> ${OUT_FILE}
	sleep 10
done