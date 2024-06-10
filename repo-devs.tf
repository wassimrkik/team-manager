resource "github_team" "repo_developers_team" {
  name        = var.repo_developers_team_name
  description = var.repo_developers_team_description
  privacy     = var.repo_developers_team_privacy
}

locals {
  repo_developers_team_maintainers = { for i in var.repo_developers_team_maintainers : lower(i) => { role = "maintainer", username = i } }
  repo_developers_team_members     = { for i in var.repo_developers_team_members : lower(i) => { role = "member", username = i } }

  repo_developers_memberships = merge(local.repo_developers_team_maintainers, local.repo_developers_team_members)
}

resource "github_team_membership" "developers_team_membership" {
  for_each = local.repo_developers_memberships

  team_id  = github_team.repo_developers_team.id
  username = each.value.username
  role     = each.value.role
}