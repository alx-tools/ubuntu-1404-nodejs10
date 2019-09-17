#!/bin/bash

export NODE_PATH=/usr/lib/node_modules

rm -rf /tmp/run.sh;
rm -rf /root/.bash_history;

/usr/sbin/sshd -D
