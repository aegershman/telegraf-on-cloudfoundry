# telegraf-on-cloudfoundry

Can I run telegraf as just a regular ol' application and pass config via env vars?

[As per this github issue](https://github.com/influxdata/telegraf/issues/5469), we won't be able to parse the `VCAP_SERVICES` without running a script first. So `telegraf-env-in-user-provided-service.confg` won't work without first pre-processing the `*.conf` to expand out variable references.

## links

- [telegraf environment variables](http://docs.influxdata.com/telegraf/v1.9/administration/configuration/#environment-variables)
- [github issue about hiding passwords in telegraf config](https://github.com/influxdata/telegraf/issues/3124)
- [limited use of the telegraf buildpack](https://github.com/Comcast/telegraf-buildpack/blob/master/bin/config-global-tags.sh#L50-L60), cool and interesting but also seems like a very specific telegraf use-case
- [vcap_squash](https://github.com/cloudfoundry-community/vcap-squash)
