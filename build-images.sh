#!/bin/bash

set -e

docker build -t 192.168.99.100:5000/config-server ./config-server
docker build -t 192.168.99.100:5000/service-registry ./service-registry
docker build -t 192.168.99.100:5000/tracing-server ./tracing-server
docker build -t 192.168.99.100:5000/monitor-dashboard ./monitor-dashboard
docker build -t 192.168.99.100:5000/auth-service ./auth-service
docker build -t 192.168.99.100:5000/account-service ./account-service
docker build -t 192.168.99.100:5000/api-gateway ./api-gateway

docker rmi $(docker images -f "dangling=true" -q)
