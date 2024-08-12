terraform {
  required_version = ">= 1.7.0"
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }
}
