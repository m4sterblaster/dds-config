# install -y common utils
sudo yum install -y curl wget tree vim exuberant-ctags tmux
sudo yum install -y tmux

# set vim as default editor
sudo ln -sf /usr/bin/vim.basic /etc/alternatives/editor 

# configure git globally
echo "What is your github user name?"
read github_username
git config --global user.name $github_username
echo "What is your github email?"
read github_email
git config --global user.email $github_email
echo "git is now configured globally, don't forget to add key to github"

# configure vim and stuff
cp -rf .vim ~/
cp .vimrc ~/
cp .rdebugrc ~/
cp .tmux.conf ~/
mkdir ~/.NERDTreeBookmarks
