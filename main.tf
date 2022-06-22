resource "vault_consul_secret_backend" "backend" {
  namespace = var.namespace

  path                      = var.path
  description               = var.description
  address                   = var.address
  token                     = var.token
  ca_cert                   = var.ca_cert
  default_lease_ttl_seconds = var.default_lease_ttl
  max_lease_ttl_seconds     = var.max_lease_ttl
}

resource "vault_consul_secret_backend_role" "roles" {
  namespace = var.namespace

  for_each = var.roles
  name     = each.key
  policies = each.value
  backend  = vault_consul_secret_backend.backend.path
}
