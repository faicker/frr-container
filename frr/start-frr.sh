#!/usr/bin/env bash

progs="staticd zebra"
for prg in bgpd ospfd ospf6d ripd ripngd babeld isisd bfdd pimd ldpd nhrpd eigrpd sharpd fabricd; do
    progs=$progs" $prg"
done

/usr/lib/frr/watchfrr $progs
