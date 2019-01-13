#!/bin/sh
nohup goreplay --input-raw :80 --output-http "http://app"  --output-http "http://app2"  --output-http-elasticsearch es:9200/gor &