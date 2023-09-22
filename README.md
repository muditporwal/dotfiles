# Instructions for setting up your environment

## Clean Installation
- Make the config directory

  `~/.cfg`

- Add a personal token that expires in 1 day
  
  ```text
  From your GitHub account, go to 
  Settings → Developer Settings → Personal Access Token → Generate New Token (Give your password) → Fillup the form → click Generate token → Copy the generated Token,
  it will be something like ghp_sFhFsSHhTzMDreGRLjmks4Tzuzgthdvfsrta
  ```
  
- Clone the dotfiles repo to a bare repo under `~/.cfg`

  `git clone --bare <git-repo-url> $HOME/.cfg`

- Use username and Access Token as Password for logging into git

- Setup dotf alias for current shell scope (instead of `config` in the reference : https://www.atlassian.com/git/tutorials/dotfiles)

  `alias dotf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

- Checkout the actual content from the bare repository

  `dotf checkout`



## Troubleshooting
- Error message with something to do with Working Tree implies that you need to copy over the current configuration. Refer to : https://www.atlassian.com/git/tutorials/dotfiles