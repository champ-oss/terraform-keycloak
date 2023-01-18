variable "client_id" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#client_id"
  type        = string
  default     = "terraform-client"
}

variable "client_secret" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#client_secret"
  type        = string
  default     = ""
}

variable "url" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#url"
  type        = string
  default     = ""
}

variable "realm" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#realm"
  type        = string
  default     = ""
}

variable "initial_login" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#initial_login"
  type        = bool
  default     = false
}

variable "enabled" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#enabled"
  type        = bool
  default     = true
}

variable "attributes" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs/resources/realm#attributes"
  type        = map(string)
  default     = {}
}

variable "smtp_host" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs/resources/realm#host"
  type        = string
  default     = null
}

variable "smtp_port" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs/resources/realm#port"
  type        = number
  default     = null
}

variable "email_from" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs/resources/realm#from"
  type        = string
  default     = null
}

variable "smtp_username" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs/resources/realm#attributes"
  type        = string
  default     = null
}

variable "smtp_password" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs/resources/realm#attributes"
  type        = string
  default     = null
}
