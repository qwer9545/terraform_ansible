# terraform/providers.tf
provider "kubernetes" {
  config_path = "~/.kube/config"  # Kubernetes 클러스터 설정 파일 경로
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
