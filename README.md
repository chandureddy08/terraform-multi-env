# 🌐 Terraform Provisioners and Multi-Environment Setup (Dev & Prod)

terraform-provisioners folder illustrates about Local exec and Remote exec

tfvars manages infrastructure using **Terraform** with two isolated environments: `dev` and `prod`. Each environment is configured separately to ensure safe, independent deployments.

## 📁 Project Structure

├── terraform-provisioners/
│  ├── ec2.tf
│  ├── provider.tf
│  └── private_ips.txt
├── tfvars/
│ ├── dev/ # Development environment
│ │ ├── backend.tf
│ │ └── dev.tfvars
│ └── prod/ # Production environment
│ │ ├── backend.tf
│ │ └── prod.tfvars
│ ├── provider.tf
│ ├── ec2.tf
│ ├── r53.tf.tf
│ ├── outputs.tf
│ └── variables.tf
└── README.md
