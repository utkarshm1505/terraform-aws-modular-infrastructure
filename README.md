# Terraform AWS Modular Infrastructure

## Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform for provisioning and managing AWS resources through a modular and reusable architecture.

The infrastructure is organized into separate Development and Production environments, enabling environment-specific deployments while maintaining consistency and scalability. The project follows Terraform best practices by utilizing reusable modules for AWS IAM and EC2 resources.

---

## Key Features

- Infrastructure as Code (IaC) using Terraform
- Modular and reusable Terraform configurations
- Separate Development and Production environments
- AWS IAM user, group, and policy provisioning
- AWS EC2 instance deployment
- AWS VPC provisioning using Terraform Registry modules
- Environment-specific configuration management
- Scalable project structure for future expansion

---

## Project Structure

```text
terraform-aws-multi-environment-infrastructure
│
├── environments
│   ├── dev
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── prod
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── modules
│   ├── ec2
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── iam
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── .gitignore
```

---

## Technologies Used

* Terraform
* Amazon Web Services (AWS)
* AWS EC2
* AWS IAM
* AWS VPC
* Infrastructure as Code (IaC)

---

## Terraform Workflow

Initialize Terraform:

```bash
terraform init
```

Validate Configuration:

```bash
terraform validate
```

Generate Execution Plan:

```bash
terraform plan
```

Apply Infrastructure:

```bash
terraform apply
```

Destroy Infrastructure:

```bash
terraform destroy
```

---

## Learning Outcomes

This project helped in understanding:

* Terraform fundamentals and workflow
* Infrastructure as Code concepts
* Modular infrastructure design
* AWS resource provisioning
* Multi-environment infrastructure management
* Cloud automation best practices

---

## Future Enhancements

* Security Group Management
* Auto Scaling Configuration
* Load Balancer Integration
* RDS Deployment
* CI/CD Pipeline Automation

---

## Repository Purpose

This repository was developed as part of hands-on learning and practical implementation of Terraform-based AWS infrastructure automation using modular design principles.

---

## Author

**Utkarsh Mahajan**

B.Tech Computer Science Engineering (Cloud Computing)
Cloud & DevOps Enthusiast | AWS | Terraform | Infrastructure as Code

GitHub: https://github.com/utkarshm1505
