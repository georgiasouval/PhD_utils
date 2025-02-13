

#1. check status of changes, modifies, added, deleted, untracked files
git status

# add modified files to staging area
git add . 


# commit changes
git commit -m "Add new content"

#Before pushing, always pull the latest changes to avoid conflicts:
git pull origin main --rebase

# push your changes to the remote repository:
git push origin main



#====================================================================================================
# quick summary of workflow
git status
git add .
git commit -m "Your commit message"
git pull origin main --rebase
git push origin main
#====================================================================================================

#  see commit history
git log --oneline

#  see commit history with details
git log

# UNDO LAST COMMIT BEFORE PUSHING
git reset --soft HEAD~1