resource "github_team" "repo_admins_team" {
  name        = var.repo_admins_team_name
  description = var.repo_admins_team_description
  privacy     = var.repo_admins_team_privacy
}

locals {
  repo_admins_team_maintainers = { for i in var.repo_admins_team_maintainers : lower(i) => { role = "maintainer", username = i } }
  repo_admins_team_members     = { for i in var.repo_admins_team_members : lower(i) => { role = "member", username = i } }

  repo_admins_memberships = merge(local.repo_admins_team_maintainers, local.repo_admins_team_members)
}

resource "github_team_membership" "admins_team_membership" {
  for_each = local.repo_admins_memberships

  team_id  = github_team.repo_admins_team.id
  username = each.value.username
  role     = each.value.role
}