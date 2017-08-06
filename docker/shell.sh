#!/bin/bash
# runs shell in react container

ENVIRONMENT=${1:-local}
echo "Running shell with ENVIRONMENT=$ENVIRONMENT"

# run the workbench container
docker run \
    --rm \
    -v $(pwd)/src:/src \
    -e ENVIRONMENT=$ENVIRONMENT \
    --entrypoint=/bin/bash \
    -ti flask-api
