# docker-flask-api

This is a lightweight boilerplate for a flask api built using docker.

## Setup
### Instructions tested using a linux environment

1. Install Docker
    a. Follow the [Docker Tutorial](https://docs.docker.com/engine/installation/)
2. Clone this repository
    a. `git clone git@github.com:mac-s-g/docker-flask-api.git`
3. Change to `docker-flask-api` directory
    a. `cd docker-flask-api`
4. Build the docker image *(Note: you may need to )*
    a. `docker build -t docker-flask-api` .
5. Run the dev server on localhost
    a. `./docker/dev-server.sh`
6. Ping your API *(Note: default port exposed is 5000)*
    a. navigate your web browser to `localhost:5000`