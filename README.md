# Docker-compose setup for Stellar Bridge Server

Get the Stellar Bridge Server up and running in a docker container.

## Requirements

 - Docker
 - Docker-compose

## Instructions

### Run Locally

- Build the docker image: `docker-compose build bridge`
- Copy `env.sample` to `env` and replace variables
- Run the bridge server: `docker-compose up`
