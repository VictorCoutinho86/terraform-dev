resource "helm_release" "ingress_nginx" {
  name       = "ingress-nginx"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = var.ingress_nginx_helm_version

  namespace        = "ingress-nginx"
  create_namespace = true

  values = [file("chart-values/nginx_ingress_values.yaml")]

  set {
    name  = "extraArgs"
    value = yamlencode({ "publish-status-address" : var.domain })
  }

  depends_on = [kind_cluster.local_cluster]
}

resource "null_resource" "wait_for_ingress_nginx" {

  provisioner "local-exec" {
    command = <<EOF
      printf "\nWaiting for the nginx ingress controller...\n"
      kubectl wait --namespace ${helm_release.ingress_nginx.namespace} \
        --for=condition=ready pod \
        --selector=app.kubernetes.io/component=controller \
        --timeout=90s
    EOF
  }

  depends_on = [helm_release.ingress_nginx]
}
