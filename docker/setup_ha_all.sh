#!/bin/bash
#
#

IMAGE=$1

PARAMS=( "." '{"ha-mode":"all","ha-sync-mode":"automatic"}')
HACMD="rabbitmqctl set_policy ha-all"

docker exec $IMAGE $HACMD "${PARAMS[@]}"
