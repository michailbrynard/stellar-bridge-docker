# Docker-compose setup for Stellar Bridge Server

Get the Stellar Bridge Server up and running in a docker container.

## Docker Tagging Convention

This will follow the version of bridge with the addition of the release number at the end. For example:

- `v0.0.17.0` (first v0.0.17 release)
- `v0.0.17.1` (there's a problem with the image; second release)

## Instructions

The only items that can be configured with environment variables in the bridge.cfg file can be found in `app/bridge.cfg.template`. These variables will be replaced by the values of their respective environment variables. See `env.sample`.

### Run Locally

- Build the docker image: `docker-compose build bridge`
- Copy `env.sample` to `env` and replace variables
- Run the bridge server: `docker-compose up`
