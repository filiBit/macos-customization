#!/bin/bash

CONFIG_PATH=${XDG_CONFIG_HOME:-"$HOME/.config"}

brew install koekeishiya/formulae/skhd

mkdir $CONFIG_PATH/skhd
cp ./skhd/skhdrc $CONFIG_PATH/skhd/skhdrc

brew install --cask amethyst

defaults write com.apple.dock "mru-spaces" -bool "false" && killall Dock

mkdir $CONFIG_PATH/amethyst
cp ./amethyst/amethyst.yml $CONFIG_PATH/amethyst/amethyst.yml


