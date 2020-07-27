#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s $DIR/bash-profile.sh ~/.bash_profile
ln -s $DIR/bashrc.sh ~/.bashrc
ln -s $DIR/init/vscode.json "/Users/jake/Library/Application Support/Code/User/settings.json"