terraform {
  required_providers {
    keycloak = {
      source  = "mrparkers/keycloak"
      version = "4.1.0"
    }
  }
}

provider "keycloak" {
  # Configuration options
  client_id     = var.client_id
  client_secret = var.client_secret
  url           = var.url
  initial_login = var.initial_login
  realm         = "master"
}