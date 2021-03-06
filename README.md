# Security Onion + Elastic
This repo contains files which will configure the Elastic Stack on Security Onion:
* Elasticsearch
* Logstash
* Kibana

For more information, please see the Elastic pages on our Wiki:
https://securityonion.net/wiki/elastic


Logstash initialization requirements
/etc/default/logstash

```shell
LS_PIPELINE_BRO_S3_ACCESS_KEY_ID=""
LS_PIPELINE_BRO_S3_SECRET_ACCESS_KEY=""
LS_PIPELINE_BRO_S3_BUCKET=""
LS_PIPELINE_BRO_S3_REGION=""
LS_PIPELINE_BRO_S3_PREFIX=""
LS_PIPELINE_BACKUP_S3_BUCKET=""
LS_PIPELINE_BACKUP_ADD_S3_PREFIX="processed/"

LS_PIPELINE_BRO_ELASTIC_HOST=""
LS_PIPELINE_BRO_ELASTIC_USER=""
LS_PIPELINE_BRO_ELASTIC_PASSWORD=""
```

/etc/systemd/system/logstash.service
```shell
ExecStart=/bin/bash -c 'LS_PIPELINE_BRO_S3_PREFIX_DATE=`/etc/logstash/s3-prefix-date.sh` exec /usr/share/logstash/bin/logstash "--path.settings" "/etc/logstash"'
```

/etc/logstash/s3-prefix-date.sh - as is


Install rvm
gem install bundler

cd ~/bro-s3-elastic
bundle install
cd bro-s3-pipeline
mustache 0097_input_bro_s3.yaml 0097_input_bro_s3.template > 0097_input_bro_s3.conf

