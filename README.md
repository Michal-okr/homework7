# ECS Nginx Demo

## Popis
Tento projekt nasazuje nginx aplikaci na AWS ECS pomocí Terraform a GitHub Actions.

### Architektura
- AWS ECS Fargate cluster
- Application Load Balancer
- VPC s public subnety (default VPC)
- CloudWatch logging

### Nasazení
1. Forkni tento repository nebo jej naklonuj.
2. Nastav GitHub Secrets:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
3. Vytvoř S3 bucket pro Terraform state (např. `tfstate-538694382273-eu-central-1`).
4. Uprav backend konfiguraci v `terraform/main.tf` na svůj bucket.
5. Push do main branch spustí nasazení přes GitHub Actions.

### Použití
Po úspěšném nasazení bude aplikace dostupná na URL z GitHub Actions výstupu (`load_balancer_url`).

### Čištění
```bash
terraform destroy -auto-approve
```

### Aplikace URL
- Load Balancer: [URL z výstupu Terraformu]

---

## Odevzdání
- GitHub repository s Terraform kódem
- GitHub Actions workflow
- README s instrukcemi a ALB URL
- Screenshot běžící aplikace

### Bonusové body
- Custom nginx stránka s vlastním obsahem
- CloudWatch logging configuration
- Multiple availability zones deployment

### Pomocné zdroje
```bash
# Test dostupnosti
curl http://<alb-dns-name>

# AWS CLI pro debugging
aws ecs describe-services --cluster <cluster-name>
aws ecs describe-tasks --cluster <cluster-name>
aws logs describe-log-groups --log-group-name-prefix "/ecs/"
```
