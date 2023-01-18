resource "keycloak_realm" "this" {
  realm               = var.realm
  enabled             = var.enabled
  display_name        = var.realm
  user_managed_access = false
  attributes          = var.attributes

  # login attributes
  duplicate_emails_allowed = false
  login_with_email_allowed = true
  ssl_required             = "external"

  # smtp attributes
  smtp_server {
    host = var.smtp_host
    port = var.smtp_port
    from = var.email_from

    auth {
      username = var.smtp_username
      password = var.smtp_password
    }
  }
}
