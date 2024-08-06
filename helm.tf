# terraform/helm.tf
resource "helm_release" "api_server" {
  name       = "api-server"
  chart      = "./k8s/helm-chart"  # 로컬 Helm 차트 경로
  version    = "0.1.0"  # 차트 버전
  namespace  = "api-base"

  values = [
    file("k8s/helm-chart/values.yaml")
  ]
}
