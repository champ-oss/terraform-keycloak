provider "keycloak" {
  client_id      = var.keycloak_client_id
  username       = var.keyclaok_username
  password       = var.keycloak_password
  url            = var.keycloak_url
  client_timeout = var.client_timeout
}
