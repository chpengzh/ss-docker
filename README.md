# SS-Docker

Docker for __YOU KNOWN WHAT__

Just for research, don't use it

## Build image

```
docker build . -t wtf_server
```

## How to run

run server at `0.0.0.0:8088`

```
docker run -dt \
    -p 8088:443 \
    -e APP_ALG=rc4-md5 \
    -e APP_PASSWORD=123456 \
    wtf_server
```

