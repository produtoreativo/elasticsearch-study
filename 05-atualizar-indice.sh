#!/bin/bash

# Elasticsearch server URL
ELASTICSEARCH_URL="http://localhost:9200"

# Index name
INDEX_NAME="products"

# JSON payload for the update request
JSON_PAYLOAD='{
  "doc": {
    "field1": "new_value1",
    "field2": "new_value2"
  }
}'

# Send the update request
curl -X DELETE "$ELASTICSEARCH_URL/$INDEX_NAME"
curl -X PUT -H "Content-Type: application/json" "$ELASTICSEARCH_URL/$INDEX_NAME" -d "$JSON_PAYLOAD"