#!/usr/bin/env bash

progs="staticd zebra"
for prg in bgpd ospfd ospf6d ripd ripngd babeld isisd bfdd pimd ldpd nhrpd eigrpd sharpd fabricd; do
    enabled=0
    if [[ -f /etc/frr/daemons ]]; then
        if grep -q "$prg=yes" /etc/frr/daemons; then
            enabled=1
        fi
    fi
    if [[ -f /etc/frr/$prg.conf ]]; then
        enabled=1
    fi
    if [[ $enabled -eq 1 ]]; then
        progs=$progs" $prg"
    fi
done

/usr/lib/frr/watchfrr $progs
