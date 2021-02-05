# docker-nextdns

## Description

[NextDNS client](https://github.com/nextdns/nextdns) inspired from [steeef/docker-nextdns](https://github.com/steeef/docker-nextdns)

## Configuration

You can set a few variables depending on your needs:

| Environment variable | Description                      |
| -------------------- | -------------------------------- |
| `NEXTDNS_ID`         | ID of your NextDNS configuration |
| `NEXTDNS_ARGUMENTS`  | Any additional argument          |

## Running

```
docker run -p 53:53/tcp -p 53:53/udp \
  -e NEXTDNS_ID= \
  --name nextdns \
  krewh/nextdns
```
