#!/bin/bash

COMPOSE_FILE=docker-compose.yml
CUSTOM_COMPOSE_FILE=docker-compose-custom.yml 

docker compose -f ${COMPOSE_FILE} -f ${CUSTOM_COMPOSE_FILE} --project-name elk $@