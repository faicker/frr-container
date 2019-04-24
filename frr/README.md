## frr

frr docker image.

## usage

* edit config zebra.conf or bgpd.conf and etc in current directory.
* run it,
```bash
docker run -d --privileged -v `pwd`:/etc/frr faicker/frr
```
