#!/bin/bash

echo -e "\n\nConfiguring bare repo and aliases for dot files Reference : https://www.atlassian.com/git/tutorials/dotfiles"
## Reference : https://www.atlassian.com/git/tutorials/dotfiles
alias dotf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
dotf config --local status.showUntrackedFiles no
echo "alias dotf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc

echo "Completed configuring bare repo and aliases for dot files"
