#!/usr/bin/env bash
set -e

docker compose up -d --build

sleep 5

curl -f http://localhost:8080/healthz
curl -f http://localhost:9000/fortunes

docker compose down