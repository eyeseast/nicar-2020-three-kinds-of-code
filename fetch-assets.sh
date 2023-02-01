#!/usr/bin/env sh

for asset in $(cat .glitch-assets); do
    echo $asset | jq -r '.url'
    wget -O "assets/$(echo $asset | jq -r '.name')" "$(echo $asset | jq -r '.url')"
    sleep 1
done
