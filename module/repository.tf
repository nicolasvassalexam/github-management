// The creation of a repository in your organization

resource "github_repository" "some_repo"{
  name        = var.name
  description = var.description
  gitignore_template  = var.gitignore
  has_wiki            = var.wiki
  
  visibility = "public"  
}

# Protect the main branch of the foo repository. Only allow a specific user to merge to the branch.
resource "github_branch_protection_v3" "example" {
  repository     = github_repository.some_repo.name
  branch         = "main"

  restrictions {
    users = []
  }
}