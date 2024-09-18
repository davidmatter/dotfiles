#!/bin/bash

echo "Installing dotfiles"

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install oh-my-zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Execute installers in ./installers
for installer in ./installers/*.sh; do
  echo "Installing $installer"
  $installer
done

# Common packages
brew install \
  nvim \
  git \