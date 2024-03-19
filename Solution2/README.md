Sample Terraform Script
- backend.tf can be replaced with TFE Workspace(need to check env-specific workspace creation)
- terraform plan --var-file=sandbox.tfvars / prod.tfvars
- terraform apply --var-file=sandbox.tfvars / prod.tfvars