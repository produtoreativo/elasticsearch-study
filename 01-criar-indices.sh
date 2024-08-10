#!/bin/bash


# settings
# mapping
curl -X PUT 'http://localhost:9200/products' -H 'Content-Type: application/json' -d '{
    "settings": {
        "number_of_shards": 1,
        "number_of_replicas": 0
    }
}'