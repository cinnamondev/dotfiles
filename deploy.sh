#!/bin/bash/

alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

git clone --separate-git-dir=$HOME/.dotfiles -b "${1}" git@github.com:/cinnamondev/dotfiles.git ~/.dotfiles-tmp

rsync --recursive --verbose --exclude ".git*" --exclude "README.md" ~/.dotfiles-tmp/ $HOME

rm -r ~/.dotfiles-tmp
