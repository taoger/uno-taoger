#!/bin/bash

if [ -d "uno-taoger" ]; then
  echo "\nUno Taoger is already installed. Maybe you want to update? Run:"
  echo "\nsh scripts/update.sh"
  exit
fi

git clone https://github.com/taoger/uno-taoger.git && cd uno-taoger

. "$PWD"/scripts/utils.sh

welcome

echo "Getting the repository tagged commits"
git fetch --tags

echo "Resolving the latest tagged version"
latestTag=$(git describe --tags "$(git rev-list --tags --max-count=1)")

echo "Creating a stable branch from the latest tagged version"
git checkout "$latestTag"
git checkout -b stable

echo "\nTheme Installed Successful! Enjoy :-)"
