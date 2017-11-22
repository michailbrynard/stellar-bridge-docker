# Docker-compose setup for Stellar Bridge Server

Get the Stellar Bridge Server up and running in a docker container.

## Docker Tagging Convention

This will follow the version of bridge with the addition of the release number at the end. For example:

- `v0.0.17.0` (first v0.0.17 release)
- `v0.0.17.1` (there's a problem with the image; second release)

## Instructions

Put the bridge config file in `config/bridge.cfg`. You can start with `config/bridge.cfg.sample`.

If you want to try it with docker-compose, run `docker-compose up`.

If you're running on Kubernetes, you just need to mount a secret on `/etc/bridge`, so that the `bridge.cfg` file is available at `/etc/bridge/bridge.cfg`.

### Run Locally

- Build the docker image: `docker-compose build bridge`
- Copy `env.sample` to `env` and replace variables
- Run the bridge server: `docker-compose up`
