# Notes

## Versions

- Elasticsearch 9.0.2, Lucene 10.1.0
- Opensearch 3.0.0, Lucene 10.1.0

## Tests

* rally-dense_vector-es-bbq-recall - running - done

```
Defaulted container "rally" out of: rally, permission-fix (init), cleanup-indices (init)

    ____        ____
   / __ \____ _/ / /_  __
  / /_/ / __ `/ / / / / /
 / _, _/ /_/ / / / /_/ /
/_/ |_|\__,_/_/_/\__, /
                /____/

[INFO] Race id is [7791c367-2a22-471f-af55-0c9360a004d4]
[INFO] Racing on track [dense_vector], challenge [index-and-search] and car ['external'] with version [3.0.0].

[WARNING] merges_total_time is 2695 ms indicating that the cluster is not in a defined clean state. Recorded index time metrics may be misleading.
[WARNING] indexing_total_time is 2520 ms indicating that the cluster is not in a defined clean state. Recorded index time metrics may be misleading.
[WARNING] refresh_total_time is 4083 ms indicating that the cluster is not in a defined clean state. Recorded index time metrics may be misleading.
[WARNING] flush_total_time is 9624 ms indicating that the cluster is not in a defined clean state. Recorded index time metrics may be misleading.
Running delete-index                                                           [100% done]
Running create-index                                                           [100% done]
Running cluster-health                                                         [100% done]
Running index-append                                                           [100% done]
Running refresh-after-index                                                    [100% done]
Running wait-until-merges-finish-after-index                                   [100% done]
Running knn-search-100-1000-concurrent-with-indexing,index-update-concu...     [100% done]
Running refresh-after-update                                                   [100% done]
Running wait-until-merges-finish_after_update                                  [100% done]
Running knn-search-10-100                                                      [100% done]
Running knn-search-100-1000                                                    [100% done]
Running force-merge                                                            [100% done]
Running refresh-after-force-merge                                              [100% done]
Running wait-until-merges-finish                                               [100% done]
Running knn-search-10-100-force-merge                                          [100% done]
Running knn-search-100-1000-force-merge                                        [100% done]
Running script-score-query                                                     [100% done]
Running knn-recall-10-100                                                      [100% done]
Running knn-recall-100-1000                                                    [100% done]

------------------------------------------------------
    _______             __   _____
   / ____(_)___  ____ _/ /  / ___/_________  ________
  / /_  / / __ \/ __ `/ /   \__ \/ ___/ __ \/ ___/ _ \
 / __/ / / / / / /_/ / /   ___/ / /__/ /_/ / /  /  __/
/_/   /_/_/ /_/\__,_/_/   /____/\___/\____/_/   \___/
------------------------------------------------------
            
|                                                         Metric |                                         Task |            Value |   Unit |
|---------------------------------------------------------------:|---------------------------------------------:|-----------------:|-------:|
|                     Cumulative indexing time of primary shards |                                              |      9.57412     |    min |
|             Min cumulative indexing time across primary shards |                                              |      0           |    min |
|          Median cumulative indexing time across primary shards |                                              |      0.00380833  |    min |
|             Max cumulative indexing time across primary shards |                                              |      9.5196      |    min |
|            Cumulative indexing throttle time of primary shards |                                              |      0           |    min |
|    Min cumulative indexing throttle time across primary shards |                                              |      0           |    min |
| Median cumulative indexing throttle time across primary shards |                                              |      0           |    min |
|    Max cumulative indexing throttle time across primary shards |                                              |      0           |    min |
|                        Cumulative merge time of primary shards |                                              |     77.6401      |    min |
|                       Cumulative merge count of primary shards |                                              |     47           |        |
|                Min cumulative merge time across primary shards |                                              |      0           |    min |
|             Median cumulative merge time across primary shards |                                              |      0.00494167  |    min |
|                Max cumulative merge time across primary shards |                                              |     77.5918      |    min |
|               Cumulative merge throttle time of primary shards |                                              |      1.79633     |    min |
|       Min cumulative merge throttle time across primary shards |                                              |      0           |    min |
|    Median cumulative merge throttle time across primary shards |                                              |      0           |    min |
|       Max cumulative merge throttle time across primary shards |                                              |      1.79633     |    min |
|                      Cumulative refresh time of primary shards |                                              |      9.60413     |    min |
|                     Cumulative refresh count of primary shards |                                              |    547           |        |
|              Min cumulative refresh time across primary shards |                                              |      0           |    min |
|           Median cumulative refresh time across primary shards |                                              |      0.00514167  |    min |
|              Max cumulative refresh time across primary shards |                                              |      9.52113     |    min |
|                        Cumulative flush time of primary shards |                                              |     13.2958      |    min |
|                       Cumulative flush count of primary shards |                                              |    120           |        |
|                Min cumulative flush time across primary shards |                                              |      0           |    min |
|             Median cumulative flush time across primary shards |                                              |      0.00309167  |    min |
|                Max cumulative flush time across primary shards |                                              |     13.1291      |    min |
|                                        Total Young Gen GC time |                                              |      4.47        |      s |
|                                       Total Young Gen GC count |                                              |     49           |        |
|                                          Total Old Gen GC time |                                              |      0           |      s |
|                                         Total Old Gen GC count |                                              |      0           |        |
|                                                     Store size |                                              |      2.48173     |     GB |
|                                                  Translog size |                                              |      0.00331379  |     GB |
|                                         Heap used for segments |                                              |      0           |     MB |
|                                       Heap used for doc values |                                              |      0           |     MB |
|                                            Heap used for terms |                                              |      0           |     MB |
|                                            Heap used for norms |                                              |      0           |     MB |
|                                           Heap used for points |                                              |      0           |     MB |
|                                    Heap used for stored fields |                                              |      0           |     MB |
|                                                  Segment count |                                              |     33           |        |
|                                    Total Ingest Pipeline count |                                              |      0           |        |
|                                     Total Ingest Pipeline time |                                              |      0           |      s |
|                                   Total Ingest Pipeline failed |                                              |      0           |        |
|                                                 Min Throughput |                                 index-append |   2812.25        | docs/s |
|                                                Mean Throughput |                                 index-append |   5630.47        | docs/s |
|                                              Median Throughput |                                 index-append |   6684.9         | docs/s |
|                                                 Max Throughput |                                 index-append |   6876.29        | docs/s |
|                                        50th percentile latency |                                 index-append |    115.736       |     ms |
|                                        90th percentile latency |                                 index-append |    132.997       |     ms |
|                                        99th percentile latency |                                 index-append |    472.504       |     ms |
|                                      99.9th percentile latency |                                 index-append |  54982.5         |     ms |
|                                       100th percentile latency |                                 index-append | 192370           |     ms |
|                                   50th percentile service time |                                 index-append |    115.736       |     ms |
|                                   90th percentile service time |                                 index-append |    132.997       |     ms |
|                                   99th percentile service time |                                 index-append |    472.504       |     ms |
|                                 99.9th percentile service time |                                 index-append |  54982.5         |     ms |
|                                  100th percentile service time |                                 index-append | 192370           |     ms |
|                                                     error rate |                                 index-append |      0           |      % |
|                                                 Min Throughput |                          refresh-after-index |      0.01        |  ops/s |
|                                                Mean Throughput |                          refresh-after-index |      0.01        |  ops/s |
|                                              Median Throughput |                          refresh-after-index |      0.01        |  ops/s |
|                                                 Max Throughput |                          refresh-after-index |      0.01        |  ops/s |
|                                       100th percentile latency |                          refresh-after-index |  79011.7         |     ms |
|                                  100th percentile service time |                          refresh-after-index |  79011.7         |     ms |
|                                                     error rate |                          refresh-after-index |      0           |      % |
|                                                 Min Throughput |        index-update-concurrent-with-searches |   5890.66        | docs/s |
|                                                Mean Throughput |        index-update-concurrent-with-searches |   6124.07        | docs/s |
|                                              Median Throughput |        index-update-concurrent-with-searches |   6122.66        | docs/s |
|                                                 Max Throughput |        index-update-concurrent-with-searches |   6336.88        | docs/s |
|                                        50th percentile latency |        index-update-concurrent-with-searches |    665.124       |     ms |
|                                        90th percentile latency |        index-update-concurrent-with-searches |    824.261       |     ms |
|                                       100th percentile latency |        index-update-concurrent-with-searches |   1390.16        |     ms |
|                                   50th percentile service time |        index-update-concurrent-with-searches |    665.124       |     ms |
|                                   90th percentile service time |        index-update-concurrent-with-searches |    824.261       |     ms |
|                                  100th percentile service time |        index-update-concurrent-with-searches |   1390.16        |     ms |
|                                                     error rate |        index-update-concurrent-with-searches |      0           |      % |
|                                                 Min Throughput | knn-search-100-1000-concurrent-with-indexing |      0.08        |  ops/s |
|                                                Mean Throughput | knn-search-100-1000-concurrent-with-indexing |      5.47        |  ops/s |
|                                              Median Throughput | knn-search-100-1000-concurrent-with-indexing |      6.15        |  ops/s |
|                                                 Max Throughput | knn-search-100-1000-concurrent-with-indexing |      7.96        |  ops/s |
|                                        50th percentile latency | knn-search-100-1000-concurrent-with-indexing |     86.8931      |     ms |
|                                        90th percentile latency | knn-search-100-1000-concurrent-with-indexing |    109.172       |     ms |
|                                        99th percentile latency | knn-search-100-1000-concurrent-with-indexing |    152.745       |     ms |
|                                       100th percentile latency | knn-search-100-1000-concurrent-with-indexing |    266.62        |     ms |
|                                   50th percentile service time | knn-search-100-1000-concurrent-with-indexing |     86.8931      |     ms |
|                                   90th percentile service time | knn-search-100-1000-concurrent-with-indexing |    109.172       |     ms |
|                                   99th percentile service time | knn-search-100-1000-concurrent-with-indexing |    152.745       |     ms |
|                                  100th percentile service time | knn-search-100-1000-concurrent-with-indexing |    266.62        |     ms |
|                                                     error rate | knn-search-100-1000-concurrent-with-indexing |      0           |      % |
|                                                 Min Throughput |                         refresh-after-update |      0.01        |  ops/s |
|                                                Mean Throughput |                         refresh-after-update |      0.01        |  ops/s |
|                                              Median Throughput |                         refresh-after-update |      0.01        |  ops/s |
|                                                 Max Throughput |                         refresh-after-update |      0.01        |  ops/s |
|                                       100th percentile latency |                         refresh-after-update |  69256           |     ms |
|                                  100th percentile service time |                         refresh-after-update |  69256           |     ms |
|                                                     error rate |                         refresh-after-update |      0           |      % |
|                                                 Min Throughput |                            knn-search-10-100 |      8.45        |  ops/s |
|                                                Mean Throughput |                            knn-search-10-100 |     17.3         |  ops/s |
|                                              Median Throughput |                            knn-search-10-100 |     18.5         |  ops/s |
|                                                 Max Throughput |                            knn-search-10-100 |     21.95        |  ops/s |
|                                        50th percentile latency |                            knn-search-10-100 |     34.1183      |     ms |
|                                        90th percentile latency |                            knn-search-10-100 |     49.3202      |     ms |
|                                        99th percentile latency |                            knn-search-10-100 |     79.3929      |     ms |
|                                      99.9th percentile latency |                            knn-search-10-100 |    109.772       |     ms |
|                                       100th percentile latency |                            knn-search-10-100 |    254           |     ms |
|                                   50th percentile service time |                            knn-search-10-100 |     34.1183      |     ms |
|                                   90th percentile service time |                            knn-search-10-100 |     49.3202      |     ms |
|                                   99th percentile service time |                            knn-search-10-100 |     79.3929      |     ms |
|                                 99.9th percentile service time |                            knn-search-10-100 |    109.772       |     ms |
|                                  100th percentile service time |                            knn-search-10-100 |    254           |     ms |
|                                                     error rate |                            knn-search-10-100 |      0           |      % |
|                                                 Min Throughput |                          knn-search-100-1000 |     28.23        |  ops/s |
|                                                Mean Throughput |                          knn-search-100-1000 |     29.84        |  ops/s |
|                                              Median Throughput |                          knn-search-100-1000 |     29.96        |  ops/s |
|                                                 Max Throughput |                          knn-search-100-1000 |     30.84        |  ops/s |
|                                        50th percentile latency |                          knn-search-100-1000 |     30.6823      |     ms |
|                                        90th percentile latency |                          knn-search-100-1000 |     33.4208      |     ms |
|                                        99th percentile latency |                          knn-search-100-1000 |     39.6345      |     ms |
|                                      99.9th percentile latency |                          knn-search-100-1000 |    133.259       |     ms |
|                                       100th percentile latency |                          knn-search-100-1000 |    237.781       |     ms |
|                                   50th percentile service time |                          knn-search-100-1000 |     30.6823      |     ms |
|                                   90th percentile service time |                          knn-search-100-1000 |     33.4208      |     ms |
|                                   99th percentile service time |                          knn-search-100-1000 |     39.6345      |     ms |
|                                 99.9th percentile service time |                          knn-search-100-1000 |    133.259       |     ms |
|                                  100th percentile service time |                          knn-search-100-1000 |    237.781       |     ms |
|                                                     error rate |                          knn-search-100-1000 |      0           |      % |
|                                                 Min Throughput |                                  force-merge |      0           |  ops/s |
|                                                Mean Throughput |                                  force-merge |      0           |  ops/s |
|                                              Median Throughput |                                  force-merge |      0           |  ops/s |
|                                                 Max Throughput |                                  force-merge |      0           |  ops/s |
|                                       100th percentile latency |                                  force-merge |      1.97011e+06 |     ms |
|                                  100th percentile service time |                                  force-merge |      1.97011e+06 |     ms |
|                                                     error rate |                                  force-merge |      0           |      % |
|                                                 Min Throughput |                knn-search-10-100-force-merge |      5.65        |  ops/s |
|                                                Mean Throughput |                knn-search-10-100-force-merge |     21.51        |  ops/s |
|                                              Median Throughput |                knn-search-10-100-force-merge |     22.51        |  ops/s |
|                                                 Max Throughput |                knn-search-10-100-force-merge |     35           |  ops/s |
|                                        50th percentile latency |                knn-search-10-100-force-merge |      9.12369     |     ms |
|                                        90th percentile latency |                knn-search-10-100-force-merge |     10.4367      |     ms |
|                                        99th percentile latency |                knn-search-10-100-force-merge |     13.9721      |     ms |
|                                      99.9th percentile latency |                knn-search-10-100-force-merge |     16.0525      |     ms |
|                                       100th percentile latency |                knn-search-10-100-force-merge |     18.6088      |     ms |
|                                   50th percentile service time |                knn-search-10-100-force-merge |      9.12369     |     ms |
|                                   90th percentile service time |                knn-search-10-100-force-merge |     10.4367      |     ms |
|                                   99th percentile service time |                knn-search-10-100-force-merge |     13.9721      |     ms |
|                                 99.9th percentile service time |                knn-search-10-100-force-merge |     16.0525      |     ms |
|                                  100th percentile service time |                knn-search-10-100-force-merge |     18.6088      |     ms |
|                                                     error rate |                knn-search-10-100-force-merge |      0           |      % |
|                                                 Min Throughput |              knn-search-100-1000-force-merge |     83.36        |  ops/s |
|                                                Mean Throughput |              knn-search-100-1000-force-merge |     85.55        |  ops/s |
|                                              Median Throughput |              knn-search-100-1000-force-merge |     85.95        |  ops/s |
|                                                 Max Throughput |              knn-search-100-1000-force-merge |     86.16        |  ops/s |
|                                        50th percentile latency |              knn-search-100-1000-force-merge |     10.2152      |     ms |
|                                        90th percentile latency |              knn-search-100-1000-force-merge |     10.8833      |     ms |
|                                        99th percentile latency |              knn-search-100-1000-force-merge |     11.9123      |     ms |
|                                      99.9th percentile latency |              knn-search-100-1000-force-merge |     12.7315      |     ms |
|                                       100th percentile latency |              knn-search-100-1000-force-merge |     20.2332      |     ms |
|                                   50th percentile service time |              knn-search-100-1000-force-merge |     10.2152      |     ms |
|                                   90th percentile service time |              knn-search-100-1000-force-merge |     10.8833      |     ms |
|                                   99th percentile service time |              knn-search-100-1000-force-merge |     11.9123      |     ms |
|                                 99.9th percentile service time |              knn-search-100-1000-force-merge |     12.7315      |     ms |
|                                  100th percentile service time |              knn-search-100-1000-force-merge |     20.2332      |     ms |
|                                                     error rate |              knn-search-100-1000-force-merge |      0           |      % |
|                                                 Min Throughput |                           script-score-query |      0.13        |  ops/s |
|                                                Mean Throughput |                           script-score-query |      0.55        |  ops/s |
|                                              Median Throughput |                           script-score-query |      0.58        |  ops/s |
|                                                 Max Throughput |                           script-score-query |      0.84        |  ops/s |
|                                        50th percentile latency |                           script-score-query |    561.308       |     ms |
|                                        90th percentile latency |                           script-score-query |    570.024       |     ms |
|                                        99th percentile latency |                           script-score-query |    587.003       |     ms |
|                                      99.9th percentile latency |                           script-score-query |    780.421       |     ms |
|                                       100th percentile latency |                           script-score-query |    827.075       |     ms |
|                                   50th percentile service time |                           script-score-query |    561.308       |     ms |
|                                   90th percentile service time |                           script-score-query |    570.024       |     ms |
|                                   99th percentile service time |                           script-score-query |    587.003       |     ms |
|                                 99.9th percentile service time |                           script-score-query |    780.421       |     ms |
|                                  100th percentile service time |                           script-score-query |    827.075       |     ms |
|                                                     error rate |                           script-score-query |      0           |      % |
|                                                 Min Throughput |                            knn-recall-10-100 |      0           |  ops/s |
|                                                Mean Throughput |                            knn-recall-10-100 |      0           |  ops/s |
|                                              Median Throughput |                            knn-recall-10-100 |      0           |  ops/s |
|                                                 Max Throughput |                            knn-recall-10-100 |      0           |  ops/s |
|                                       100th percentile latency |                            knn-recall-10-100 |      1.18332e+06 |     ms |
|                                  100th percentile service time |                            knn-recall-10-100 |      1.18332e+06 |     ms |
|                                                     error rate |                            knn-recall-10-100 |      0           |      % |
|                                                 Min Throughput |                          knn-recall-100-1000 |      0           |  ops/s |
|                                                Mean Throughput |                          knn-recall-100-1000 |      0           |  ops/s |
|                                              Median Throughput |                          knn-recall-100-1000 |      0           |  ops/s |
|                                                 Max Throughput |                          knn-recall-100-1000 |      0           |  ops/s |
|                                       100th percentile latency |                          knn-recall-100-1000 |      1.21542e+06 |     ms |
|                                  100th percentile service time |                          knn-recall-100-1000 |      1.21542e+06 |     ms |
|                                                     error rate |                          knn-recall-100-1000 |      0           |      % |


----------------------------------
[INFO] SUCCESS (took 9188 seconds)
----------------------------------
```

* rally-dense_vector-os-faiss-ootb - running - 
* 