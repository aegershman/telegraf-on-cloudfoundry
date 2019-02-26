# env-from-user-provided-services

More useful. Requires evaluating the `VCAP_SERVICES` environment variables first. We use [`vcap-squash`](https://github.com/cloudfoundry-community/vcap-squash) to achieve this.

The user-provided service binding looks like this:

```json
VCAP_SERVICES={"user-provided":[{
  "label": "user-provided",
  "name": "user-provided",
  "tags": [
  ],
  "instance_name": "user-provided",
  "binding_name": null,
  "credentials": {
    "telegraf_ping_target": "amazon.com"
  },
  "syslog_drain_url": "",
  "volume_mounts": [
  ]
}]}
```

So `vcap-squash` should flatten this to `USER_PROVIDED_TELEGRAF_PING_TARGET`

## recreate

- Get the [`vcap-squash-linux-amd64`](https://github.com/cloudfoundry-community/vcap-squash/releases/download/v0.1.1/vcap-squash-linux-amd64) binary
- Save it to the folder root
- Make it executable with `chmod +x vcap-squash-linux-amd64`
- Read over the contents of `.profile.d/setenv.sh`
- `cf cups user-provided -p '{"telegraf_ping_target": "amazon.com"}'`
- `cf push`
