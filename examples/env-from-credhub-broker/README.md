# env-from-credhub-broker

We create a `credhub` service instance and store our secret, `TELEGRAF_PING_TARGET` in it:

```sh
cf create-service credhub default credhub -c '{"telegraf_ping_target":"reddit.com"}'
```

The `credhub` binding within `VCAP_SERVICES` looks like this:

```json
VCAP_SERVICES={
   "credhub":[
      {
         "binding_name":null,
         "credentials":{
            "telegraf_ping_target":"reddit.com"
         },
         "instance_name":"credhub",
         "label":"credhub",
         "name":"credhub",
         "plan":"default",
         "provider":null,
         "syslog_drain_url":null,
         "tags":[
            "credhub"
         ],
         "volume_mounts":[

         ]
      }
   ]
}
```

So `vcap-squash` should flatten this to `CREDHUB_TELEGRAF_PING_TARGET`
