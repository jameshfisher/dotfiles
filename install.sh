#!/bin/bash
ZSHRC_PATH=$(realpath .zshrc)
echo "source $ZSHRC_PATH" >> ~/.zshrc
cp ./.gitconfig ~/.gitconfig