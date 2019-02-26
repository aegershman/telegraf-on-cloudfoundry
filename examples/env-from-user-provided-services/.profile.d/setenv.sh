#!/bin/sh
echo "performing setenv.sh"

# (this is the only _required_ line:)
eval $(./vcap-squash-linux-amd64)

echo "finished performing eval of vcap-squash"

echo "echoing out current state of ENV:"
env
echo "finished echoing out ENV"
