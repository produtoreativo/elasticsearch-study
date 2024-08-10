# elasticsearch-study

Executar o docker

```
docker-compose up -d
```

## Dever de casa

```
POST products/_doc
{
  "id": 19837, 
  "name": "Coca-cola 600 ml",
  "description": "Refrigerente clássico com mais de 100 anos",
  "price": 10.99,
  "tags": [
    "cola",
    "pepsi",
    "coca"
  ],
  "categories": [
    "Refrigerantes",
    "Cola"
  ]
}

POST products/_doc
{
  "id": 19840, 
  "name": "Coca-cola 2 Litros",
  "description": "Coca tradicional para a familia",
  "price": 13.99,
  "tags": [
    "cola",
    "pepsi",
    "coca",
    "sucesso"
  ],
  "categories": [
    "Refrigerantes",
    "Cola"
  ]
}

POST products/_doc
{
  "id": 19839, 
  "name": "Cerveja Estrela",
  "description": "Cerveja clássica para quem está sem grana",
  "price": 5.6,
  "tags": [
    "cerveja",
    "estrela",
    "aguada",
    "sucesso"
  ],
  "categories": [
    "Álcool",
    "Cervejas"
  ]
}
```

Quero encontrar as bebicas pelo termo de busca crássico, trará 19837 e 19839
Quero encontrar as bebicas pelo termo de busca sucesso, trará 19840 e 19839