#!/bin/bash
SERVICE_NAME=$1
protoc --go_out=./golang \
  --go_opt=paths=source_relative \
  --go_grpc_out=./golang \
  --go_grpc_opt=paths=source_relative \
  ./${SERVICE_NAME}/*.proto 
