sudo apt install curl vim zsh git git-lfs

#ZSH SETUP
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME=".+"/ZSH_THEME="agnoster"/g' ~/.zshrc

#VIM SETUP
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
git clone https://github.com/kyuhi/vim-emoji-complete.git ~/.vim/bundle/vim-emoji-complete
git clone https://github.com/chrisbra/unicode.vim ~/.vim/bundle/unicode.vim
git clone https://github.com/rhysd/vim-clang-format ~/.vim/bundle/vim-clang-format


ln -s $(pwd)/.vimrc ~/.vimrc
