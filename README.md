# Security Onion + Elastic
This repo contains files which will configure the Elastic Stack on Security Onion:
* Elasticsearch
* Logstash
* Kibana

For more information, please see the Elastic pages on our Wiki:
https://securityonion.net/wiki/elastic


Minumum list of logstash pipeline files
0007_input_import.conf
1003_preprocess_bro.conf
1100_preprocess_bro_conn.conf
1102_preprocess_bro_dns.conf
6000_bro.conf
6001_bro_import.conf
8000_postprocess_bro_cleanup.conf
8006_postprocess_dns.conf
9000_output_bro.conf
9002_output_import.conf