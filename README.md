# terraform_ansible
##소개
1. Terraform을 사용하여 Kubernetes 클러스터와 Helm 차트를 배포합니다.
2. Ansible을 사용하여 서버를 준비하고 필요한 소프트웨어를 설치합니다.
 -> helm 차트를 로컬에서 배포하여, 사용자가 플레이북을 실행할 시스템에 맞게 경로를 설정해야합니다.
3. api-server 레포지토리의 Helm 차트를 이용하여 애플리케이션을 Kubernetes 클러스터에 배포합니다.
---

##실행 방법
ansible-playbook -i ./terraform_ansible/inventory playbook.yml

##결과 확인
kubectl get pods -n api-base
kubectl get svc -n api-base

API Repo
https://github.com/qwer9545/k8s-api-server-base

인프라 환경 구성 Repo
https://github.com/qwer9545/terraform_ansible

구축 과정 velog
https://velog.io/@strong1/series/쿠버네티스