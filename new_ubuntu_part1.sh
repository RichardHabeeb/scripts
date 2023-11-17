sudo apt update
sudo apt install -y curl vim zsh git git-lfs fonts-powerline openssh-server language-pack-en
sudo update-locale

#ZSH SETUP
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
