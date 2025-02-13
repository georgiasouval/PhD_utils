#!/bin/bash

# Define repository details
GITHUB_REPO_URL="https://github.com/georgiasouval/phd_utils.git"

# Check if the repository already exists locally
if [ -d ".git" ]; then
    echo "This directory is already a Git repository."
else
    echo "Initializing Git repository..."
    git init
fi

# Add remote origin if not already added
if git remote | grep -q "origin"; then
    echo "Remote origin already set."
else
    echo "Adding remote origin..."
    git remote add origin "$GITHUB_REPO_URL"
fi

echo "Adding all files..."
git add .

echo "Committing changes..."
git commit -m "Initial commit"

echo "Pushing to GitHub..."
git branch -M main
git push -u origin main

echo "Repository successfully uploaded to GitHub!"
