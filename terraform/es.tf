resource "google_container_cluster" "es_benchmarks" {
  name               = "es-benchmarks"  
  location           = "us-central1-a"
  deletion_protection = false

  remove_default_node_pool = true                
  initial_node_count       = 1
}

resource "google_container_node_pool" "elasticsearch_nodes_4cpu" {
  name       = "elasticsearch-nodepool"
  cluster    = google_container_cluster.es_benchmarks.id
  node_count = 3

  node_config {
    machine_type = "e2-standard-4"
    disk_size_gb = 25
  }
}

resource "google_container_node_pool" "kibana_nodes_2cpu" {
  name       = "kibana-nodepool"
  cluster    = google_container_cluster.es_benchmarks.id
  node_count = 1

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 12
  }
}

resource "google_container_node_pool" "es_rally_node" {
  name       = "es-rally-node"
  cluster    = google_container_cluster.es_benchmarks.id
  node_count = 1

  node_config {
    machine_type = "e2-standard-4"
    disk_size_gb = 25
  }
}
