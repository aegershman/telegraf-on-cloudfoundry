#!/usr/bin/env bash

case "$1" in
dl | download-telegraf-binary)
    GITHUB_DOWNLOAD="https://dl.influxdata.com/telegraf/releases/telegraf-1.9.4-static_linux_amd64.tar.gz"
    curl -O ${GITHUB_DOWNLOAD}
    tar -xvf telegraf-*.tar.gz
    rm -rf telegraf-*.tar.gz
    ;;
*)
    :
    ;;
esac
