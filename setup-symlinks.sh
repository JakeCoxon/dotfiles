#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# ln -s $DIR/bash-profile.sh ~/.bash_profile
# ln -s $DIR/bashrc.sh ~/.bashrc

ln -s $DIR/zshrc.sh ~/.zshrc
ln -s $DIR/init/vscode.json "/Users/$USER/Library/Application Support/Code/User/settings.json"
ln -s $DIR/init/keybindings.json "/Users/$USER/Library/Application Support/Code/User/keybindings.json"