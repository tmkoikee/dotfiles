#!/bin/bash

ts=$(date "+%s")

# screen
if [ -e ~/.screenrc ]; then
    mv ~/.screenrc ~/.screenrc.org.${ts}
fi
ln -s screenrc ~/.screenrc

# zsh
## starship
mkdir -p ~/.config
if [ -e ~/.config/starship.toml ]; then
    mv ~/.config/starship.toml ~/.config/starship.toml.org.${ts}
fi
ln -s starship.toml ~/.config/starship.toml
