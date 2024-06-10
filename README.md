# GitHub-teams_manager

An automated solution using [Terraform](https://www.terraform.io/) to create GitHub Teams.

This repository can be used to submit a ***PR (Pull Request)***.

3. Update ***terraform.tfvars*** with desired values. 
   - It is important to include two members with the "maintainer" role for each team. Any deviations will result in the Pull Request being ***rejected***. 
   - If you want to add multiple members to teams, you can add them as comma delimited values as shown below. 
   - If you add a user as both a maintainer and a member, the end result is the user will be a member.
        
  ```bash        
  repo_admins_team_name        = "devops-test-admins"
  repo_admins_team_description = "DevOps admins team"
  repo_developers_team_name         = "devops-test-developers"
  repo_developers_team_description  = "DevOps developers team"
  ########################################
  # At least 2 maintainers are required ##
  ########################################
  repo_admins_team_maintainers = ["<github-handle member1>", "<github-handle member2>"]
  ##################################################
  # Members can be added later by team maintainers #
  ##################################################
  repo_admins_team_members = ["<github-handle member3>"]
  ########################################
  # At least 2 maintainers are required ##
  ########################################
  repo_developers_team_maintainers = ["<github handle member1>", "<github handle member2>"]
  ##################################################
  # Members can be added later by team maintainers #
  ##################################################
  repo_developers_team_members = []
  ```

4. After updating the ***terraform.tfvars***, commit your changes in the branch you've just created.

5. Create a PR to the main branch.

6. Once the PR has been created, it will run through the required checks and send your request for approval to the DevOps team.

7. The DevOps team will check your request, approve it, then merge the PR. Once the PR has been merged, your teams will be created, and you will be sent an email notification.
8. You should now see your teams and be able to access it in your GitHub workspace.

