#!/usr/bin/env sh

sudo chmod +x *.sh

sudo apt install dconf* -y
rsync -avuz /home/user/dotfiles/ /home/user/
dconf load / < settings.dconf
# rsync -avuz /home/user/settings.dconf /home/user/dotfiles/
# dconf dump / > /home/user/dotfiles/settings.dconf

git config --global user.email andreas.patinas@gmail.com
git config --global user.name patinas


ZK_PATH="/home/user/dotfiles"
cd "$ZK_PATH"
git pull
CHANGES_EXIST="$(git status --porcelain | wc -l)"
if [ "$CHANGES_EXIST" -eq 0 ]; then
	exit 0
fi
git pull
git add .
git commit -q -m "Last Sync: $(date +"%Y-%m-%d %H:%M:%S")"
git push -q


sudo pkill -KILL -u user
