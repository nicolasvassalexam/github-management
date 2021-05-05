resource "github_team" "some_team" {
  name        = "some-team"
  description = "Some cool team"
  privacy     = "closed"
}
resource "github_repository_collaborator" "a_repo_collaborator" {
  repository = "our-cool-repo"
  username   = "SomeUser"
  permission = "admin"
}
