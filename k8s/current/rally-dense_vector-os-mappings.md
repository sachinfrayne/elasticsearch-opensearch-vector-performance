# mappings

## faiss

```
{
  "vectors": {
    "mappings": {
      "dynamic": "strict",
      "_source": {
        "enabled": false
      },
      "properties": {
        "vector": {
          "type": "knn_vector",
          "dimension": 96,
          "method": {
            "engine": "faiss",
            "space_type": "innerproduct",
            "name": "hnsw",
            "parameters": {
              "ef_construction": 100,
              "m": 32
            }
          }
        }
      }
    }
  }
}
```

## lucene

```
{
  "vectors": {
    "mappings": {
      "dynamic": "strict",
      "_source": {
        "enabled": false
      },
      "properties": {
        "vector": {
          "type": "knn_vector",
          "dimension": 96,
          "method": {
            "engine": "lucene",
            "space_type": "innerproduct",
            "name": "hnsw",
            "parameters": {
              "ef_construction": 100,
              "m": 32
            }
          }
        }
      }
    }
  }
}
```
