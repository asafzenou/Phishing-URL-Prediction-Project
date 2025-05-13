#!/bin/bash
echo "Updating all submodules to latest version from remote..."

git submodule update --remote --merge

echo "Staging updated submodule pointers..."
git add .

echo "Committing update..."
git commit -m "Auto-update submodules to latest commits"
git push
