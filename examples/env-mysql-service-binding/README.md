# env-mysql-service-binding

Uses the [`mysql plugin`](https://github.com/influxdata/telegraf/tree/master/plugins/inputs/mysql)

We're using a PWS `cleardb` mysql service instance.

The user-provided service binding looks like this:

```json
VCAP_SERVICES={"cleardb":[{
  "label": "cleardb",
  "provider": null,
  "plan": "spark",
  "name": "mysql",
  "tags": [
    "Data Stores",
    "Cloud Databases",
    "Developer Tools",
    "Web-based",
    "Data Store",
    "Development and Test Tools",
    "Online Backup & Storage",
    "Single Sign-On",
    "Buyable",
    "mysql",
    "relational",
    "Cloud Security and Monitoring"
  ],
  "instance_name": "mysql",
  "binding_name": null,
  "credentials": {
    "jdbcUrl": "jdbc:mysql://us-cdbr-iron-east-03.cleardb.net/ad_d9ab3e827ee2e18?user=b8fd76ea6c275a&password=6409dc2b",
    "uri": "mysql://b8fd76ea6c275a:6409dc2b@us-cdbr-iron-east-03.cleardb.net:3306/ad_d9ab3e827ee2e18?reconnect=true",
    "name": "ad_d9ab3e827ee2e18",
    "hostname": "us-cdbr-iron-east-03.cleardb.net",
    "port": "3306",
    "username": "b8fd76ea6c275a",
    "password": "6409dc2b"
  },
  "syslog_drain_url": null,
  "volume_mounts": [

  ]
}]}
```

Note that I haven't tested this with TLS yet
