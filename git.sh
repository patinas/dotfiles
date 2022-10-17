#!/bin/sh

# To permanently cache the credentials
# git config --global credential.helper store

# To ignore files that could cause issues across different workspaces
# touch .gitignore

# echo ".cache" > .gitignore

# Making out local ZettelKasten into a local Git Repository
# git init
# git add .
# git commit -m "init"

# Pushing our local repository into our remote repository on GitHub
# git remote add origin git@github.com:patinas/dotfiles.git
# git branch -M main
# git push -u origin main




# My Cron Job:
(crontab -l ; echo "*/1 * * * * /home/user/dotfiles/git_sync.sh >/dev/null 2>&1")| crontab -
