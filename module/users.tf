# Add a user to the organization
resource "github_membership" "add_a_user" {
  username = "SomeUser"
  role     = "member"
}

resource "github_team" "some_team" {
  name        = "SomeTeam"
  description = "Some cool team"
  privacy     = "closed"
}

resource "github_team_membership" "some_team_membership" {
  team_id  = github_team.some_team.id
  username = "SomeUser"
  role     = "member"
}
