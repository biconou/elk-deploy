#!/bin/bash

COMPOSE_FILE=docker-compose.yml
CUSTOM_COMPOSE_FILE=docker-compose-custom.yml 

env $(cat .env .env.custom | grep -v '^#' | xargs) \
    docker-compose -f ${COMPOSE_FILE} -f ${CUSTOM_COMPOSE_FILE} --project-name elk $@
