rm -r -fo .terraform*
rm -r -fo terraform.tfstate*
terraform init
terraform fmt
terraform validate