
# GitHub: github_user_ssh_key - Terraform by HashiCorp
# https://www.terraform.io/docs/providers/github/r/user_ssh_key.html
resource "github_user_ssh_key" "id_rsa" {
  title = "id_rsa"
  key   = file("~/.ssh/id_rsa.pub")
}

resource "github_user_ssh_key" "id_ed25519" {
  title = "id_ed25519"
  key   = file("~/.ssh/id_ed25519.pub")
}