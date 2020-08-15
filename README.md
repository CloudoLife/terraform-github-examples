# Terraform GitHub Examples

Examples about using Terraform GitHub Provider to manage repositories and SSH keys.

Github: [https://github.com/CloudoLife/terraform-github-examples](https://github.com/CloudoLife/terraform-github-examples)

## Prerequsites
Your must have a GitHub account, api token and an organization, and Terraform CLI have been installed.

### GitHub Account

- GitHub Account
  [Signing up for GitHub - GitHub Docs](https://docs.github.com/en/github/getting-started-with-github/signing-up-for-github)

- GitHub API Token
  [Creating a personal access token - GitHub Docs](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token)

- GitHub Organization
  [Creating organizations - GitHub Docs](https://docs.github.com/en/enterprise/2.19/admin/user-management/creating-organizations)

### SSH Key

Check out our guide to [generating SSH keys](https://docs.github.com/articles/generating-an-ssh-key/) or troubleshoot common SSH Problems.

### Terrraform and Terrafrom GitHub Provider

- [Terraform by HashiCorp](https://www.terraform.io/)

    Use Infrastructure as Code to provision and manage any cloud, infrastructure, or service

- [Provider: GitHub - Terraform by HashiCorp](https://www.terraform.io/docs/providers/github/index.html)

    The GitHub provider is used to interact with GitHub organization resources.

## Configuration

### GitHub Provider Variables
First, Specify values for GitHub Provider variables within [terraform.tfvars](./terraform.tfvars).

Remember to replace <Your GitHub Token>, <Your Organiztion>.
```terraform
github_token = "<Your GitHub Token>"
github_organization = "<Your Organiztion>"
```

### SSH key 
Config github_user_ssh_keys within [./ssh_keys](./ssh_keys)

```terraform
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
```

### Repository
Config GitHub repositories within [./repositories](./repositories)

```terraform
# GitHub: github_repository - Terraform by HashiCorp
# https://www.terraform.io/docs/providers/github/r/repository.html
resource "github_repository" "terraform-github-examples" {
  name        = "terraform-github-examples"
  description = "Examples about Terraform GitHub Provider."

  private = false
}
```

## Run

### Terraform Init

```bash
terraform init
```

It will download the Terraform GitHub Provider binary.

### Terraform apply
```bash
terraform apply
```

It will dispaly the execute plan and wait for your make yes or no.
Then yes to create GitHub SSH keys and repositories.

## Known issues

Currently only organizaiton repositories is supported.

## Reference
[1] [Provider: GitHub - Terraform by HashiCorp - https://www.terraform.io/docs/providers/github/index.html](https://www.terraform.io/docs/providers/github/index.html)

[2] [terraform-providers/terraform-provider-github: Terraform GitHub provider - https://github.com/terraform-providers/terraform-provider-github](https://github.com/terraform-providers/terraform-provider-github)