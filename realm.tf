resource "keycloak_realm" "this" {
  realm             = "master"
  enabled           = true
  display_name      = "master"
}