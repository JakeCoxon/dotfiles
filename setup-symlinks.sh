#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s $DIR/bash-profile.sh ~/.bash_profile
ln -s $DIR/bashrc.sh ~/.bashrc