terraform {
  backend "remote" {
    organization = "epsi-lille"

    workspaces {
      name = "test"
    }
  }
}
