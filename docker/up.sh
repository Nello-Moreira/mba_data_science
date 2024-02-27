#! /bin/bash

docker-compose \
  --project-name mba_ds \
  -f docker-compose.yaml up \
  --remove-orphans \
  --build \
  -d