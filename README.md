# terraform-vault-consul-secrets

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | >=3.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_consul_secret_backend.backend](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/consul_secret_backend) | resource |
| [vault_consul_secret_backend_role.roles](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/consul_secret_backend_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address"></a> [address](#input\_address) | (Required) Address of the Consul Server. Requires <ip>:<port> (HCP uses port 443) | `string` | n/a | yes |
| <a name="input_ca_cert"></a> [ca\_cert](#input\_ca\_cert) | (Optional) CA Cert to be used when verifying the Consul certificate. Needs to be in PEM format | `string` | `""` | no |
| <a name="input_default_lease_ttl"></a> [default\_lease\_ttl](#input\_default\_lease\_ttl) | (Optional) Default lease TTL that is associated for credentials issued by this secrets backend | `number` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) Description for the Consul Secrets Engine | `string` | `"Secrents engine for Consul"` | no |
| <a name="input_max_lease_ttl"></a> [max\_lease\_ttl](#input\_max\_lease\_ttl) | (Optional) Max lease TTL that is associated for credentials issued by this secrets backend | `number` | `null` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | (Optional) Vault Namespace where this resource will reside | `string` | `""` | no |
| <a name="input_path"></a> [path](#input\_path) | (Optional) Path where the secrets engine will be mounted | `string` | `"consul"` | no |
| <a name="input_roles"></a> [roles](#input\_roles) | Map that contains the roles to create (key) and the ACL policies that are associated with them (value) | `map(list(string))` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | (Required) Token that will be used to create new tokens | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
