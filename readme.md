# Introduction
This repository uses docker to run HTTP testing trough Vegeta

## Prerequisites
* Docker

## DNS Configuration
To avoid some kind of udp lookout time out you must set the DNS server as "8.8.8.8"

## Run the image
It's very recommended to share the 'logs' directory, this will bind your local file system with the docker instance.
There are two ways to bind your local directory to docker instance, it depends on your operative system.

Windows example:
```
docker run --rm -it -v d:/apps/vegeta/logs:/var/log/vegeta nlsun/vegeta
```

UNIX example:
```
docker run --rm -it -v "$(pwd)"/logs:/var/log/vegeta nlsun/vegeta
```
