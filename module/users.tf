// Adding github users to your organization

resource "github_membership" "add_a_user" {
  username = var.collaborator
  role     = var.role
}

// Adding github teams to your organization

resource "github_team" "some_team" {
  name        = var.team
  description = "Some cool team"
  privacy     = "closed"
}

resource "github_team_membership" "some_team_membership" {
  team_id  = github_team.some_team.id
  username = var.collaborator
  role     = var.role
}

resource "github_team_repository" "some_team_repo" {
  team_id    = github_team.some_team.id
  repository = github_repository.some_repo.name
  permission = "pull"
}