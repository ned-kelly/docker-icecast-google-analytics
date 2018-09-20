# Icecast Google Analytics

This is a Docker build of the Icecast Google Analytics java app by "[iroks](https://coherent-receiver.com/google-analytics-and-icecast)", and is intended to be used in conjunction with an Icecast server or as part of a packaged "all in one" solution (such as my [Multi-container Libretime](https://github.com/ned-kelly/docker-multicontainer-libretime) setup).

**If you require assistance deploying this solution for a commercial station, please feel free to reach out to me - I can provide consultancy services.**

---------------------------

## Overview:

The project consists of the main Java app, bundled in "Alpine Linux" to ensure that minimal resources are consumed on your host system.

If you're new to Docker you will need to do the following before starting:

 - [Install Docker](https://www.docker.com/get-started).
 - [Install Docker Compose](https://docs.docker.com/compose/install/).

## Getting Started & Configuration:

First, clone down the repo.

```bash

git clone https://github.com/ned-kelly/docker-icecast-google-analytics.git

```

You will need to edit the `config/config.xml` file to suit your environment or the container will fail to start. Once you have made the appropriate configuration changes you may continue to stand up the service.


## Standing up:

It's pretty straightforward, just clone down the sources and stand up the container like so:

```bash
# Stand up the container using docker compose

docker-compose up -d

```

## Debugging:

If you're having issues, it's worth checking the logs before doing anything - Just tail the docker container's logs like so:

```
docker logs -f icecast-analytics
```

### Screenshot Example:

![GA Example](https://raw.githubusercontent.com/ned-kelly/docker-icecast-google-analytics/master/screenshots/ga "GA Example")

_Fig 1: GA Realtime Dashboard Example._
