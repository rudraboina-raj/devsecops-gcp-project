# DevSecOps End-to-End Pipeline on GCP

This project implements a full CI/CD + GitOps + DevSecOps workflow:

- CI with GitHub Actions
- Docker Build + Push to GCP Artifact Registry
- Trivy Security Scan
- SAST via CodeQL
- DAST via OWASP ZAP
- GitOps Deployment with ArgoCD
- Kubernetes Deployment on Google Kubernetes Engine (GKE)

## Features

✔ Fully automated build pipeline  
✔ Secure container scanning  
✔ GitOps-based continuous delivery  
✔ Automated Kubernetes sync  
✔ GCP-native services  

## Deployment Flow

1. Developer pushes to GitHub → CI Pipeline starts  
2. CodeQL SAST runs  
3. Docker image is built  
4. Trivy scans the image  
5. Image pushed to GCP Artifact Registry  
6. GitOps repo auto-updated with new SHA  
7. ArgoCD syncs → GKE deploys new version  

## Requirements

- GCP Service Account with permissions:
  - Artifact Registry
  - GKE Admin
  - Storage Admin
- Secrets in GitHub:
  - `GCP_SA_KEY`
  - `GCP_PROJECT`
  - `GITOPS_REPO`
  - `GITOPS_TOKEN`

Triggering CI pipeline

---
# 🚀 Done!
