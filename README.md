# docker-ghz

[![Docker Size](https://img.shields.io/docker/image-size/swapnildahiphale/ghz/latest?logo=docker&label=size&logoColor=white&labelColor=blue&color=blue)](https://hub.docker.com/r/swapnildahiphale/ghz/)
[![Docker Pulls](https://img.shields.io/docker/pulls/swapnildahiphale/ghz.svg?logo=docker&label=pulls&logoColor=white&labelColor=blue&color=blue)](https://hub.docker.com/r/swapnildahiphale/ghz/)
[![docker-ghz Version](https://img.shields.io/github/v/release/swapnildahiphale/docker-ghz?logo=docker&label=version&logoColor=white&labelColor=blue&color=blue)](https://hub.docker.com/r/swapnildahiphale/ghz/)

[![License](https://img.shields.io/github/license/swapnildahiphale/docker-ghz)](LICENSE)

[![Discord](https://img.shields.io/badge/Discord-7289DA?style=flat&logo=discord&logoColor=white)](https://discord.gg/w49c9Kq)

A slim Alpine-based [docker image](https://hub.docker.com/r/swapnildahiphale/ghz) for running [ghz](https://github.com/bojand/ghz) load tests.

## Usage:

A good way to use the image with minimal configuration, is to use volumes to mount your proto(s) and config file(s) into the container before executing your call.

This will allow you to call `ghz` very easily:

```
docker run \
    --volume "${PWD}/protos:/ghz/protos" \
    --volume "${PWD}/config.json:/ghz/config.json" \
    swapnildahiphale/ghz \
    --config=/ghz/config.json \
    --proto=/ghz/protos/HelloWorld.proto \
    --call=helloworld.Greeter.SayHello \
    0.0.0.0:50051
```

This will start the ghz load test.

You can show the help message by running:

```
docker run swapnildahiphale/ghz --help
```

For more information on running ghz, see: https://ghz.sh
