variable "kind_cluster_name" {
  type        = string
  description = "The name of the kind cluster."
  default     = "argocd-kind"
}

variable "node_image" {
  type        = string
  description = "Version of the kind docker image to use"
  default     = "kindest/node:v1.30.0"
}

variable "ingress_nginx_helm_version" {
  type        = string
  description = "The Helm version for the nginx ingress controller."
  default     = "4.10.1"
}

variable "argocd_helm_version" {
  type        = string
  description = "The Helm version for the argocd controller."
  default     = "7.1.3"
}

variable "domain" {
  type        = string
  description = "Domain name to use for use on Nginx Ingress"
}
