#!/bin/bash

if [ -d "${HOME}/.zsh/.zprezto" ] 
then
    echo "Directory ${HOME}/.zsh/.zprezto exists."
    echo "Prezto is probably already installed"
    exit 0
else
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${HOME}/.zsh/.zprezto"
fi