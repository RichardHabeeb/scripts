#ZSH SETUP (CONT)
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
chsh -s $(which zsh)

#SSH
[ -f ~/.ssh/id_ed25519.pub ] || ssh-keygen -t ed25519
echo "-------SSH PUBLIC KEY-------"
cat ~/.ssh/id_ed25519.pub
echo "-------SSH PUBLIC KEY-------"

#GIT SETUP
git config --global user.name "Richard Habeeb"
git config --global user.email "richard.habeeb@gmail.com"

#VIM SETUP
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
git clone https://github.com/kyuhi/vim-emoji-complete.git ~/.vim/bundle/vim-emoji-complete
git clone https://github.com/chrisbra/unicode.vim ~/.vim/bundle/unicode.vim
git clone https://github.com/rhysd/vim-clang-format ~/.vim/bundle/vim-clang-format

ln -s $(pwd)/.vimrc ~/.vimrc


exec zsh
