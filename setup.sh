#!/bin/bash

# setup.sh is used to automatically create the symlinks necessary for the dotfiles to work.
# This could be done more elegantly with a for loop, but due to the fact that each piece of software looks in a different place for its config file, we have to specify each individually in an ugly manner.
# Make sure, if you use this script, that you change "whompratt" to be your username otherwise the script will fail.
# If you encounter permission errors, try running the below chown commands externally, as they can go wonky at times.

sudo chown whompratt:whompratt "${HOME}/.dotfiles/"
sudo chown whompratt:whompratt "${HOME}/.config/"

ln -sf "${HOME}/.dotfiles/compton.conf" "${HOME}/.config/compton.conf"
ln -sf "${HOME}/.dotfiles/i3-config" "${HOME}/.config/i3/config"
ln -sf "${HOME}/.dotfiles/i3status-config" "${HOME}/.config/i3status/config"
ln -sf "${HOME}/.dotfiles/polybar-config" "${HOME}/.config/polybar/config"
ln -sf "${HOME}/.dotfiles/polybar-launch.sh" "${HOME}/.config/polybar/launch.sh"
ln -sf "${HOME}/.dotfiles/.vimrc" "${HOME}/.vimrc"
ln -sf "${HOME}/.dotfiles/wallpaper.jpg" "${HOME}/Pictures/wallpaper.jpg"
ln -sf "${HOME}/.dotfiles/.Xresources" "${HOME}/.Xresources"

