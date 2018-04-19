#!/bin/sh -e

export AMQP_USER="${AMQP_USER:-guest}"
export AMQP_PASS="${AMQP_PASS:-guest}"
export AMQP_HOST="${AMQP_HOST:-localhost}" 
export AMQP_PORT="${AMQP_PORT:-5672}" 

flower --broker=amqp://${AMQP_USER}:${AMQP_PASS}@${AMQP_HOST}:${AMQP_PORT}//
