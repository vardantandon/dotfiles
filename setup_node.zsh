#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

# Node versions managed by nvm
if exists node; then
  echo "Node $(node --version) & $(npm --version) already installed"
else
  echo "Installing node & npm using nvm"
  nvm install node
fi

brew bundle --verbose