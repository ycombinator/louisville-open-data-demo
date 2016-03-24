#/bin/bash

curl -XDELETE 'http://localhost:9200/louisville'

rm ~/.sincedb_* ; ~/logstash-2.1.1/bin/logstash --config load-businesses.conf

rm ~/.sincedb_* ; ~/logstash-2.1.1/bin/logstash --config load-inspections.conf
