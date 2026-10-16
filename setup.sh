#!/bin/bash
mkdir -p "$HOME/.config"
for dir in */; do
  dir="${dir%/}"
  # assuming dotfiles is in home dir
  ln -sfn "$HOME/.dotfiles/$dir" "$HOME/.config"
  echo "linked $dir"
done
