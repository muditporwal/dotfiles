# Instructions for setting up your environment

## Clean Installation
- Clone the dotfiles repo to a bare repo under `~/.cfg`
- `git clone --bare <git-repo-url> $HOME/.cfg`
- Setup dotf alias for current shell scope (instead of `config` in the reference : https://www.atlassian.com/git/tutorials/dotfiles)
- `alias dotf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
- Checkout the actual content from the bare repository
- `dotf checkout`


## Troubleshooting
- Error message with something to do with Working Tree implies that you need to copy over the current configuration. Refer to : https://www.atlassian.com/git/tutorials/dotfiles
