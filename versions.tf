terraform {
  required_version = ">= 0.12.29"
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }
}
