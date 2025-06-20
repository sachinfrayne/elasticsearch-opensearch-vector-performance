# mappings

## hnsw

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
          "type": "dense_vector",
          "dims": 96,
          "index": true,
          "similarity": "cosine",
          "index_options": {
            "type": "hnsw",
            "m": 32,
            "ef_construction": 100
          }
        }
      }
    }
  }
}
```

## int8

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
          "type": "dense_vector",
          "dims": 96,
          "index": true,
          "similarity": "cosine",
          "index_options": {
            "type": "int8_hnsw",
            "m": 32,
            "ef_construction": 100
          }
        }
      }
    }
  }
}
```

## int4

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
          "type": "dense_vector",
          "dims": 96,
          "index": true,
          "similarity": "cosine",
          "index_options": {
            "type": "int4_hnsw",
            "m": 32,
            "ef_construction": 100
          }
        }
      }
    }
  }
}
```

## bbq

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
          "type": "dense_vector",
          "dims": 96,
          "index": true,
          "similarity": "cosine",
          "index_options": {
            "type": "bbq_hnsw",
            "m": 32,
            "ef_construction": 100
          }
        }
      }
    }
  }
}
```

# cluster settings

## hnsw