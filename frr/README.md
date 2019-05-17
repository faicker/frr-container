frr docker image with watchfrr.

## usage

```bash
chown -R 104:109 frr.example    # frr:frr
docker run -it -d --init --rm --privileged -v `pwd`/frr.example:/etc/frr faicker/frr
```
