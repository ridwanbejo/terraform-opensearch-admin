terraform {
  required_version = ">= 1.4"

  required_providers {
    opensearch = {
      source = "opensearch-project/opensearch"
      version = "2.1.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "opensearch" {
  url         = "https://localhost:9200"
  username    = "admin"
  password    = "admin"
  sniff       = false
  healthcheck = false
  insecure    = true
}
