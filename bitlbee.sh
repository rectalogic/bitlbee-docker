#!/usr/bin/env bash

mkdir -p ~/.bitlbee
exec docker run --detach --rm --publish 127.0.0.1:6667:6667 --volume=$HOME/.bitlbee:/var/lib/bitlbee --name bitlbee rectalogic/bitlbee
