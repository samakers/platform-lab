# platform-lab

A production-style platform I'm building at home to mirror a real microservices stack: Terraform, Azure DevOps, AWS, Cloudflare, nginx and Kubernetes, with monitoring, alerting and documented failure drills.

> **Status:** in progress, Sprint 1 of 4

## What this is

<!-- Write this last, in your own words: what you built, why, and what you learned. 3-4 sentences. -->

## Architecture

<!-- After Step 3: add a diagram (Excalidraw or draw.io exported to docs/architecture.png) showing
     Cloudflare -> Tunnel -> ingress-nginx -> services, plus the pipeline and Terraform flows. -->

## Stack

| Area | Tool |
| --- | --- |
| Infrastructure as code | Terraform (Cloudflare, Helm, Kubernetes and AWS providers) |
| CI/CD | Azure DevOps Pipelines with a self-hosted agent |
| Kubernetes | k3s via k3d (1 server, 2 agents) |
| Ingress | ingress-nginx |
| Edge and DNS | Cloudflare DNS and Cloudflare Tunnel |
| Monitoring | Prometheus, Grafana, Alertmanager, Loki |
| Cloud | AWS (VPC, EC2, ECR, S3 remote state) |

## Repo layout

| Folder | What's in it |
| --- | --- |
| `terraform/cloudflare` | DNS records and tunnel routing as code |
| `terraform/cluster` | Cluster add-ons (ingress-nginx, monitoring) and namespaces |
| `terraform/aws` | VPC, EC2, ECR and remote state |
| `k8s` | Kubernetes manifests and Helm charts |
| `app` | `status-api`, a small Go service deployed by the pipeline |
| `pipelines` | Azure DevOps pipeline definitions |
| `incidents` | Post-incident reviews from failure drills |
| `runbooks` | Step-by-step fixes for recurring problems |
| `docs` | Setup guide, notes and design write-ups |
| `scripts` | Cluster scripts |

## Run it yourself

Setup steps are in [docs/setup.md](docs/setup.md). Once the tools are installed:

```bash
./scripts/cluster-up.sh
cd terraform/cluster && terraform init && terraform apply
```

## Incidents and runbooks

<!-- Link each one as you write it, e.g.
- [2026-11-03: bad release caused ImagePullBackOff](incidents/2026-11-03-bad-release.md) -->

## Progress

- [ ] Step 0: setup, tools and repo
- [ ] Step 1: Terraform manages Cloudflare DNS
- [ ] Step 2: 3-node cluster with ingress-nginx, add-ons via Terraform
- [ ] Step 3: microservices app live on my domain through Cloudflare Tunnel
- [ ] Step 4: Go service with Azure DevOps CI/CD and an approval gate
- [ ] Step 5: Terraform runs through the pipeline with S3 remote state
- [ ] Step 6: Prometheus, Grafana, Loki and SLO burn-rate alerts
- [ ] Step 7: five failure drills with incident reports and runbooks
- [ ] Step 8: AWS environment with Terraform, demo video
