#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

# Node versions managed by nvm
if exists node; then
  echo "Node $(node --version) & $(npm --version) already installed"
else
  echo "Installing node & npm using nvm"
  nvm install node
fi

# Install Global NPM Packages
npm install --global firebase-tools
npm install --global @angular/cli
npm install --global @ionic/cli
npm install --global typescript
npm install --global json-server
npm install --global http-server

echo "Global NPM Packages Installed:"
npm list --global --depth=0
