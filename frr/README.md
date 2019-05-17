## frr

frr docker image.

## usage

* edit config daemons and zebra.conf or bgpd.conf or other in current directory(see frr example config file).
* run it,
```bash
docker run -d --privileged -v `pwd`:/etc/frr faicker/frr
```
