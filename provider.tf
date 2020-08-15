
# Provider: GitHub - Terraform by HashiCorp
# https://www.terraform.io/docs/providers/github/index.html
# Configure the GitHub Provider
provider "github" {
  token        = var.github_token
  organization = var.github_organization

#   individual = true
}