# Nine Tech Talk Thursday - Docker for Developers

## What is this project?

This project is a sample rails app that has been dockerized with docker and docker-compose.

## Interesting files

```shell
config/database.yml # Database configuration for the Rails application
.env                # Environment variables (fed to the "app" container in docker-compose.yml)
Dockerfile          # File to create the docker image for our rails application
docker-compose.yml  # Used to launch our application with its dependencies (a postgres database) with one command.
```

## Interesting commands

```shell
docker build -t 'ttt/my-docker-image' . # Building the docker image for the application
docker-compose build                    # Building all of the images that need to be built inside the docker-compose.yml
docker-compose up app                   # Launch the service "app", along with all of its dependent services
```

## TL;DR

```shell
docker-compose build
docker-compose up app

docker-compose run app rails db:setup # Creates the database, run the seeds, etc. Would normally be part of the container booting process.

# Go to http://localhost:4000
```
