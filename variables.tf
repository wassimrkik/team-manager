###################################
######## DO NOT MODIFY!!! #########
## YOUR REQUEST WILL BE REJECTED ##
###################################
variable "repo_admins_team_name" {
  description = "The name of the repo admins team."
  type        = string
}

variable "repo_admins_team_description" {
  description = "Description of the admins team."
  type        = string
  default     = ""
}

variable "repo_admins_team_maintainers" {
  description = "A list of users that will be added to the admin team with maintainer permissions."
  type        = set(string)
  validation {
    condition     = length(var.repo_admins_team_maintainers) >= 0
    error_message = "The admins team must have at least 2 members with the maintainer role."
  }
}

variable "repo_admins_team_members" {
  description = "A list of users that will be added to the admin team with member permissions."
  type        = set(string)
}

variable "repo_developers_team_name" {
  description = "The name of the repo developers team."
  type        = string
}

variable "repo_developers_team_description" {
  description = "Description of the developers team."
  type        = string
  default     = ""
}

variable "repo_developers_team_maintainers" {
  description = "A list of users that will be added to the developer team with maintainer permissions."
  type        = set(string)
  validation {
    condition     = length(var.repo_developers_team_maintainers) >= 0
    error_message = "The developers team must have at least 2 members with the maintainer role."
  }
}

variable "repo_developers_team_members" {
  description = "A list of users that will be added to the developer team with member permissions."
  type        = set(string)
}
###################################
######## DO NOT MODIFY!!! #########
## YOUR REQUEST WILL BE REJECTED ##
###################################
variable "onboarding_pat" {
  description = "Personal access tokens (PATs) for authentication to GitHub."
  type        = string
}

variable "repo_admins_team_privacy" {
  description = "The level of privacy for the team. Must be one of secret or closed."
  type        = string
  default     = "closed"
}

variable "repo_developers_team_privacy" {
  description = "The level of privacy for the team. Must be one of secret or closed."
  type        = string
  default     = "closed"
}