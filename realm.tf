resource "keycloak_realm" "this" {
  realm        = "test"
  enabled      = true
  display_name = "test"
}