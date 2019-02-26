#!/usr/bin/env bash

case "$1" in

dtb | download-telegraf-binary)
    curl -O "https://dl.influxdata.com/telegraf/releases/telegraf-1.9.4-static_linux_amd64.tar.gz"
    tar -xvf telegraf-*.tar.gz
    rm -rf telegraf-*.tar.gz
    ;;

daea | delete-all-example-apps)
    cf delete telegraf-env-from-manifest-only -r -f
    cf delete telegraf-env-from-user-provided-services -r -f
    ;;

# For use in `env-from-user-provided-services`
cec | create-example-cups) cf cups user-provided -p '{"telegraf_ping_target": "amazon.com"}' ;;
dec | delete-example-cups) cf delete-service user-provided -f ;;

*)
    :
    ;;
esac
