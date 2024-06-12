# terraform-dev

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.13.0 |
| <a name="requirement_kind"></a> [kind](#requirement\_kind) | 0.5.1 |
| <a name="requirement_null"></a> [null](#requirement\_null) | 3.2.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.13.0 |
| <a name="provider_kind"></a> [kind](#provider\_kind) | 0.5.1 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.argocd](https://registry.terraform.io/providers/hashicorp/helm/2.13.0/docs/resources/release) | resource |
| [helm_release.ingress_nginx](https://registry.terraform.io/providers/hashicorp/helm/2.13.0/docs/resources/release) | resource |
| [kind_cluster.local_cluster](https://registry.terraform.io/providers/tehcyx/kind/0.5.1/docs/resources/cluster) | resource |
| [null_resource.wait_for_ingress_nginx](https://registry.terraform.io/providers/hashicorp/null/3.2.2/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_argocd_helm_version"></a> [argocd\_helm\_version](#input\_argocd\_helm\_version) | The Helm version for the argocd controller. | `string` | `"7.1.3"` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | Domain name to use for use on Nginx Ingress | `string` | n/a | yes |
| <a name="input_ingress_nginx_helm_version"></a> [ingress\_nginx\_helm\_version](#input\_ingress\_nginx\_helm\_version) | The Helm version for the nginx ingress controller. | `string` | `"4.10.1"` | no |
| <a name="input_kind_cluster_name"></a> [kind\_cluster\_name](#input\_kind\_cluster\_name) | The name of the kind cluster. | `string` | `"argocd-kind"` | no |
| <a name="input_node_image"></a> [node\_image](#input\_node\_image) | Version of the kind docker image to use | `string` | `"kindest/node:v1.30.0"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
