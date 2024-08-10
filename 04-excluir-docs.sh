#!/bin/bash

# Set the Elasticsearch server URL
ELASTICSEARCH_URL="http://localhost:9200"

# Set the index name
INDEX_NAME="products"

# Delete all documents from the index
curl -X DELETE "$ELASTICSEARCH_URL/$INDEX_NAME/_delete_by_query" -H 'Content-Type: application/json' -d '{
  "query": {
    "match_all": {}
  }
}'