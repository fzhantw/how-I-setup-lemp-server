printf "${BLUE}Cloning Vim Files...${NORMAL}\n"
hash git >/dev/null 2>&1 || {
echo "Error: git is not installed"
exit 1
}
rm -rf ~/.vim
rm -rf ~/.vimrc
mkdir ~/.vim
env git clone --depth=1 https://github.com/fzhantw/vimrc.git ~/.vim || {
printf "Error: git clone of vim repo failed\n"
exit 1
}
ln -s ~/.vim/vimrc ~/.vimrc
