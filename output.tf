# ------------------------------------------------------------------------------
# OUTPUT CALCULATED VARIABLES (prefer full objects)
# ------------------------------------------------------------------------------

output "repo_admins_team_id" {
  description = "The ID of the repo admins team."
  value       = github_team.repo_admins_team.id
}

output "repo_admins_team_name" {
  description = "The name of the repo admins team."
  value       = github_team.repo_admins_team.name
}

output "repo_admins_slug" {
  description = "The Slug of the repo admins team."
  value       = github_team.repo_admins_team.slug
}

output "repo_developers_team_id" {
  description = "The ID of the repo developers team."
  value       = github_team.repo_developers_team.id
}

output "repo_developers_team_name" {
  description = "The name of the repo developers team."
  value       = github_team.repo_developers_team.name
}

output "repo_developers_team_slug" {
  description = "The Slug of the repo developers team."
  value       = github_team.repo_developers_team.slug
}

# ------------------------------------------------------------------------------
# OUTPUT ALL RESOURCES AS FULL OBJECTS
# ------------------------------------------------------------------------------

output "repo_admins_team" {
  description = "The full repo admins team object."
  value       = github_team.repo_admins_team
}

output "repo_admins_team_memberships" {
  description = "A list of all repo admins team memberships."
  value       = github_team_membership.admins_team_membership
}

output "repo_developers_team" {
  description = "The full repo developers team object."
  value       = github_team.repo_developers_team
}

output "repo_developers_team_memberships" {
  description = "A list of all repo developers team memberships."
  value       = github_team_membership.developers_team_membership
}