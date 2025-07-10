#!/bin/bash

# Authenticate if needed
gh auth status || gh auth login

# Create milestone
echo "Creating milestone 'Project Setup'..."
gh api \
  --method POST \
  -H "Accept: application/vnd.github+json" \
  repos/astratow/11-learning/milestones \
  -f title='Project Setup' \
  -f description='Initial setup of Laravel LMS project' \
  -f due_on="$(date -u -d '+5 days' +%Y-%m-%dT%H:%M:%SZ)"

echo "✅ Milestone created. Please go to your GitHub repo and find the milestone number (under Issues > Milestones)."

# Prompt for milestone number
read -p "Enter the milestone number: " milestone_number

# Create issues
echo "Creating issues under 'Project Setup' milestone..."
gh issue create --repo astratow/11-learning --title "Set up Laravel project (composer, breeze/jetstream)" --milestone "$milestone_number"
gh issue create --repo astratow/11-learning --title "Initialize Git and push to GitHub" --milestone "$milestone_number"
gh issue create --repo astratow/11-learning --title "Configure .env and database" --milestone "$milestone_number"
gh issue create --repo astratow/11-learning --title "Set up local dev environment" --milestone "$milestone_number"

echo "✅ All issues created. You're ready to track your progress!"
