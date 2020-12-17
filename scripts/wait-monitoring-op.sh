#!/bin/bash


http_result=404
while [ $http_result -ne 200 ]
do
  http_result=`curl -s -o /dev/null -w "%{http_code}" localhost:9200/monitoring-op/_stats`
done
