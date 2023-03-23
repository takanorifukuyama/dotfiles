#!/bin/sh

mkdir ../.SDK
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.ideavimrc ~/.ideavimrc
ln -sf ~/dotfiles/.tigrc ~/.tigrc
ln -sf ~/dotfiles/.SDK/flutter ~/.SDK/flutter

rm -rf ~/.config/fish
rm -rf ~/.config/nvim
ln -sf ~/dotfiles/config/nvim ~/.config/nvim
ln -sf ~/dotfiles/config/fish ~/.config/fish
ln -sf ~/dotfiles/config/flutter ~/.config/flutter
ln -sf ~/dotfiles/config/gh ~/.config/gh
ln -sf ~/dotfiles/config/starship.toml ~/.config/starship.toml
