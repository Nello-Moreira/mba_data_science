#! /bin/bash

docker-compose \
  --project-name mba_ds \
  -f docker-compose.yaml down \
  --remove-orphans