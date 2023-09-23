# Instructions for setting up your environment

## Clean Installation
- Download `chezmoi` on your machine.
- Run `chezmoi init muditporwal` to setup.


## Old Instructions
- Add a personal token that expires in 1 day
  
  ```text
  From your GitHub account, go to 
  Settings → Developer Settings → Personal Access Token → Generate New Token (Give your password) → Fillup the form → click Generate token → Copy the generated Token,
  it will be something like ghp_sFhFsSHhTzMDreGRLjmks4Tzuzgthdvfsrta
  ```
  
- Clone the dotfiles repo to a bare repo under `~/.cfg`

  `git clone --bare https://github.com/muditporwal/dotfiles.git $HOME/.cfg`

- Use username and Access Token as Password for logging into git

- Setup dotf alias for current shell scope (instead of `config` in the reference : https://www.atlassian.com/git/tutorials/dotfiles)

  `alias dotf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

- Ensure you add the command to not show untracked files
  
  `dotf config status.showUntrackedFiles no`

- Check Status of the the work-tree before checkout

  `dotf status`

- Checkout the actual content from the bare repository

  `dotf checkout`

- Check Status of the the work-tree after checkout

  `dotf status`
  


## Troubleshooting
- Error message with something to do with Working Tree implies that you need to copy over the current configuration. Refer to : https://www.atlassian.com/git/tutorials/dotfiles
