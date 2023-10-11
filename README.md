# Spark Connect Golang Service

This repository contains a Golang service that connects to Apache Spark using spark-connect feature.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Building the Docker Image](#building-the-docker-image)
  - [Running the Service](#running-the-service)

## Prerequisites

Before you begin, make sure you have the following dependencies installed:

- [Golang 1.20](https://golang.google.cn/)
- [docker](https://www.docker.com/)
- [docker-compose](https://www.docker.com/)

## Getting Started

### Building the Docker Image

To build the Docker image for the Spark Connect Golang service, run the following command:

```sh
make image
```

### Running the Service

To start the service, run the following command:

```sh
make run
```

This will start both the Spark Connect Golang service and Apache Spark in separate containers.