variable "keyclaok_username" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#username"
  default     = ""
  type        = string
}

variable "keycloak_password" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#username"
  default     = ""
  type        = string
}

variable "keycloak_url" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#username"
  default     = ""
  type        = string
}

variable "keycloak_client_id" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#client_id"
  default     = "admin-cli"
  type        = string
}

variable "client_timeout" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#client_timeout"
  type        = number
  default     = 30
}
