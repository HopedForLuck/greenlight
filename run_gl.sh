#!/usr/bin/env bash

set -o allexport
source .env
set +o allexport

# Run Go application using the environment variable
go run ./cmd/api -port=$PORT -db-dsn="$DNS" -env=$ENV \
    -db-max-open-conns=$MAX_CONN -db-max-idle-conns=$MAX_IDLE_CONN -db-max-idle-time=$MAX_IDLE_TIME \
    -limiter-rps=$LIMITER_RPS -limiter-burst=$LIMITER_BURST -limiter-enabled=$LIMITER_ENABLED \
    -smtp-host="$SMTP_HOST" -smtp-port=$SMTP_PORT -smtp-user=$SMTP_USER -smtp-password=$SMTP_PASSWORD -smtp-sender="$SMTP_SENDER"