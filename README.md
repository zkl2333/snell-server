# snell-server
a snell-server with docker

## environment variables
PORT=8888
PSK=Eb7887qiyxju3fmAneZm
OBFS=tls

## Clash config
```yaml
proxies:
  - name: example
    type: snell
    server: example.com
    port: 8888
    psk: Eb7887qiyxju3fmAneZm
    obfs-opts:
      mode: tls # or http
      host: bing.com
```