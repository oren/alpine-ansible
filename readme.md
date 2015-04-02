# Ansible Docker Image based on Alpine Linux (266 MB)

![docker-badge](http://dockeri.co/image/oreng/ansible)

io.js, Ansible, boto and aws client in a minimal Docker Image.

## Prerequisites

* [Docker](https://docs.docker.com/installation)
* [Compose](https://docs.docker.com/compose/install)

## Build

    docker-compose build

## Use

    docker-compose run deploy                        # run the default script
    docker-compose run deploy help                   # run a script from the bin folder
    docker-compose run deploy sh                     # get inside

## Push to Dockerhub

    docker login
    docker tag oreng/ansible oreng/ansible:1.0.0
    docker push oreng/ansible:1.0.0                                                                       
    docker tag oreng/ansible oreng/ansible:latest
    docker push oreng/ansible:latest
