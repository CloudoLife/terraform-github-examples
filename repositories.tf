
# GitHub: github_repository - Terraform by HashiCorp
# https://www.terraform.io/docs/providers/github/r/repository.html
resource "github_repository" "terraform-github-examples" {
  name        = "terraform-github-examples"
  description = "Examples about Terraform GitHub Provider."

  private = false
}