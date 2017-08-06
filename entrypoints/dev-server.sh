#!/bin/bash

echo Running Dev Server Entrypoint

echo "Environment is $ENVIRONMENT"

echo "Python version $(python --version)"

chmod a+x /src/app.py
python /src/app.py --env $ENVIRONMENT