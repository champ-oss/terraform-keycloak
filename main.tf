provider "keycloak" {
  client_id      = "admin-cli"
  username       = var.keyclaok_username
  password       = var.keycloak_password
  url            = var.keycloak_url
  client_timeout = var.client_timeout
}
