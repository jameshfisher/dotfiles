#!/bin/bash
BASHRC_PATH=$(realpath .bashrc)
echo "source $BASHRC_PATH" >> ~/.bashrc
echo "source $BASHRC_PATH" >> ~/.zshrc
cp ./.gitconfig ~/.gitconfig