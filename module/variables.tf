// Variables repo

variable "name" {
  type = string
}

variable "description" {
  type = string
}

variable "gitignore" {
  type = string
}

variable "wiki" {
  type = bool
}

// Variables users

variable "collaborator" {
  type = string
}

variable "role" {
  type = string
}

// Variables teams

variable "team" {
  type = string
}