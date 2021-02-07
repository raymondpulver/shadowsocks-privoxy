#!/bin/bash
set -e
cat /app/shadowsocks.json.template | envsubst > /app/shadowsocks.json
ss-local -c /app/shadowsocks.json &
privoxy --no-daemon /app/privoxy/config &
wait -n
