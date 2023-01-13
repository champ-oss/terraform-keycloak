resource "keycloak_realm" "this" {
  realm               = var.realm
  enabled             = true
  display_name        = var.realm
  user_managed_access = false
  attributes          = var.attributes

  # login attributes
  duplicate_emails_allowed = false
  login_with_email_allowed = true
  ssl_required             = "external"
}