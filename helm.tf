provider "helm" {
  kubernetes {
    config_path = "/tmp/kubeconfig"
  }
}

resource "helm_release" "argo_cd" {
  depends_on = [null_resource.create_ns]
  name       = "flask-demo"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "argo/argo-cd"
  namespace = "argocd"

  set {
    name  = "server.service.type"
    value = "LoadBalancer"
  }

  }
