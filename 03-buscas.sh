#!/bin/bash

# Defina o índice e os campos que deseja buscar
index="products"
fields=("name" "description" "tags" "categories")

# Defina o termo de busca
search_term="pepse"

# Construa a consulta com highlight
query='{
  "query": {
    "match": {
      "_all": "'"${search_term}"'"
    }
  },
  "highlight": {
    "fields": {
      "'$(IFS=,; echo "${fields[*]}")'": {}
    }
  }
}'

# Execute a busca e imprima os trechos destacados
curl -X GET "localhost:9200/${index}/_search" -H 'Content-Type: application/json' -d "${query}"