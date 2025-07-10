#!/bin/bash

# Script to bulk-create GitHub issues grouped by milestone
echo '💡 Make sure you are authenticated with `gh auth login`'

REPO="astratow/11-learning"

echo '📌 Creating issues for milestone: User System'
gh issue create --repo $REPO --title "Create login and registration functionality" --milestone "User System" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Add roles: Admin and Student" --milestone "User System" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Create student dashboard" --milestone "User System" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Create admin dashboard" --milestone "User System" --body "Auto-created as part of setup."

echo '📌 Creating issues for milestone: Quiz Management (Admin) markdown Copy Edit'
gh issue create --repo $REPO --title " Add category/tag model" --milestone "Quiz Management (Admin) markdown Copy Edit" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Create quiz CRUD" --milestone "Quiz Management (Admin) markdown Copy Edit" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Create question CRUD (MCQ format)" --milestone "Quiz Management (Admin) markdown Copy Edit" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Add correct answer and option support" --milestone "Quiz Management (Admin) markdown Copy Edit" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Add bulk import from CSV (optional)" --milestone "Quiz Management (Admin) markdown Copy Edit" --body "Auto-created as part of setup."


echo '📌 Creating issues for milestone: CSV Upload & Question Import'
gh issue create --repo $REPO --title "Create CSV upload form for quiz questions" --milestone "CSV Upload & Question Import" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Implement server-side validation for CSV" --milestone "CSV Upload & Question Import" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Parse CSV and import questions into DB" --milestone "CSV Upload & Question Import" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Create database seeders from parsed questions" --milestone "CSV Upload & Question Import" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Test import with sample 11+ quiz CSV" --milestone "CSV Upload & Question Import" --body "Auto-created as part of setup."

echo '📌 Creating issues for milestone: Basic LMS Functionality'
gh issue create --repo $REPO --title "Display quizzes in user dashboard" --milestone "Basic LMS Functionality" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Implement quiz-taking interface" --milestone "Basic LMS Functionality" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Add scoring logic and feedback display" --milestone "Basic LMS Functionality" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Track quiz attempts per user" --milestone "Basic LMS Functionality" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Restrict quiz visibility by level or subject" --milestone "Basic LMS Functionality" --body "Auto-created as part of setup."

# echo '📌 Creating issues for milestone: Gamification'
# gh issue create --repo $REPO --title "Design badges and reward criteria" --milestone "Gamification" --body "Auto-created as part of setup."
# gh issue create --repo $REPO --title "Award points based on quiz performance" --milestone "Gamification" --body "Auto-created as part of setup."
# gh issue create --repo $REPO --title "Display user progress and achievements" --milestone "Gamification" --body "Auto-created as part of setup."
# gh issue create --repo $REPO --title "Create leaderboard view" --milestone "Gamification" --body "Auto-created as part of setup."
# gh issue create --repo $REPO --title "Track and store user achievements" --milestone "Gamification" --body "Auto-created as part of setup."

echo '📌 Creating issues for milestone: Admin Tools'
gh issue create --repo $REPO --title "Create admin-only dashboard" --milestone "Admin Tools" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Allow admin to manage questions and quizzes" --milestone "Admin Tools" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Implement user management" --milestone "Admin Tools" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Add feature to upload new quizzes via CSV" --milestone "Admin Tools" --body "Auto-created as part of setup."
gh issue create --repo $REPO --title "Generate stats and reports for usage" --milestone "Admin Tools" --body "Auto-created as part of setup."

echo '✅ All issues created!