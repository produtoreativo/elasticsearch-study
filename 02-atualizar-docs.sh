#!/bin/bash

# Elasticsearch endpoint
ELASTICSEARCH_URL="http://localhost:9200"

# Product documents
PRODUCT_1='{"id": 1, "name": "Product 1", "price": 10.99}'
PRODUCT_2='{"id": 2, "name": "Product 2", "price": 19.99}'

# Insert product 1
curl -X POST -H "Content-Type: application/json" -d "$PRODUCT_1" "$ELASTICSEARCH_URL/products/_doc"

# Insert product 2
curl -X POST -H "Content-Type: application/json" -d "$PRODUCT_2" "$ELASTICSEARCH_URL/products/_doc"