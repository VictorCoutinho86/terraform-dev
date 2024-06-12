resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  create_namespace = true
  version          = var.argocd_helm_version
  namespace        = "argocd"
  recreate_pods    = true
  force_update     = true

  set {
    name  = "global.domain"
    value = "argocd.${var.domain}"
  }

  values     = [file("${path.module}/chart-values/argocd_values.yaml")]
  depends_on = [null_resource.wait_for_ingress_nginx]
}
