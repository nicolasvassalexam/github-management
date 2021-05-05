module "repository" {
  source = "./module"

  name = "mysuperapp"
  description = "My super app"
  gitignore = "Terraform"
  wiki = true

  collaborator = "dylan-picquendar"
  role = "member"

  team = "terraform"
}

