#!/bin/bash

# Set your GitHub repository URL
GITHUB_REPO_URL="https://github.com/georgiasouval/phd_utils.git"

# Set the local folder path
LOCAL_FOLDER="/home/souval_g_WMGDS.WMG.WARWICK.AC.UK/Desktop/phd_utils"

# Navigate to the folder
cd "$LOCAL_FOLDER" || { echo "Folder not found!"; exit 1; }

# Initialize Git if not already initialized
if [ ! -d ".git" ]; then
    git init
    git remote add origin "$GITHUB_REPO_URL"
fi

# Add all files
git add .

# Commit changes with a timestamp
COMMIT_MESSAGE="Auto-upload: $(date)"
git commit -m "$COMMIT_MESSAGE"

# Set the main branch (GitHub default is 'main')
git branch -M main

# Push to GitHub
git push -u origin main

echo "Upload completed!"
