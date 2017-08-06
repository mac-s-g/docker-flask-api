#!/bin/bash
# usage:
#    ./docker/dev-server.sh local

ENVIRONMENT=${1:-local}
echo "Running with ENVIRONMENT=$ENVIRONMENT"

remove_container()
{
    docker rm flask-api
}

# run API container
echo Running API container...

remove_container || true

docker run \
    --name flask-api \
    --publish 5000:5000 \
    -e ENVIRONMENT=$ENVIRONMENT \
    -e PYTHONDONTWRITEBYTECODE=1 \
    -v $(pwd)/src:/src \
    -v $(pwd)/entrypoints:/entrypoints \
    --entrypoint=/entrypoints/dev-server.sh \
    -ti flask-api


