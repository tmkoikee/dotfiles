#!/bin/bash

ts=$(date "+%s")

# screen
if [ -e ~/.screenrc ]; then
    mv ~/.screenrc ~/.screenrc.saved.${ts}
fi
ln -s screenrc ~/.screenrc

# zsh
## starship
mkdir -p ~/.config
if [ -e ~/.config/starship.toml ]; then
    mv ~/.config/starship.toml ~/.config/starship.toml.saved.${ts}
fi
ln -s starship.toml ~/.config/starship.toml

## zshrc
if [ -e ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.saved.${ts}
fi
ln -s zshrc ~/.zshrc

## zshenv
if [ -e ~/.zshenv ]; then
    mv ~/.zshenv ~/.zshenv.saved.${ts}
fi
ln -s zshenv ~/.zshenv
