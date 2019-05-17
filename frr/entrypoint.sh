#!/usr/bin/env bash

DAEMON_FILE="/etc/frr/daemons"

if [[ ! -f $DAEMON_FILE ]]; then
    echo "$DAEMON_FILE not exist"
    exit 1
fi

progs="staticd zebra"
for prg in bgpd ospfd ospf6d ripd ripngd babeld isisd bfdd pimd ldpd nhrpd eigrpd sharpd fabricd; do
    if grep -q "$prg=yes" $DAEMON_FILE; then
        progs=$progs" $prg"
    fi
done

/usr/lib/frr/watchfrr $progs
