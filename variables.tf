variable "description" {
  description = "(Optional) Description for the Consul Secrets Engine"
  type        = string
  default     = "Secrents engine for Consul"
}

variable "address" {
  description = "(Required) Address of the Consul Server. Requires <ip>:<port> (HCP uses port 443)"
  type        = string
}

variable "token" {
  description = "(Required) Token that will be used to create new tokens"
  type        = string
}

variable "path" {
  description = "(Optional) Path where the secrets engine will be mounted"
  type        = string
  default     = "consul"
}

variable "ca_cert" {
  description = "(Optional) CA Cert to be used when verifying the Consul certificate. Needs to be in PEM format"
  type        = string
  default     = ""
}

variable "namespace" {
  description = "(Optional) Vault Namespace where this resource will reside"
  type        = string
  default     = ""
}

variable "default_lease_ttl" {
  description = "(Optional) Default lease TTL that is associated for credentials issued by this secrets backend"
  type        = string
  default     = ""
}

variable "max_lease_ttl" {
  description = "(Optional) Max lease TTL that is associated for credentials issued by this secrets backend"
  type        = string
  default     = ""
}

variable "roles" {
  type        = map(list(string))
  description = "Map that contains the roles to create (key) and the ACL policies that are associated with them (value)"
}
