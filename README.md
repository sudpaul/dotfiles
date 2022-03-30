# dotfiles
Unix command-line programs are usually configured using plain-text hidden files1 aka dotfiles, that are stored in the user’s home directory

Some other examples of tools that can be configured through dotfiles are:

bash - ~/.bash_profile
git - ~/.gitconfig
vim - ~/.vimrc folder
ssh - ~/.ssh/config
tmux - ~/.tmux.conf
How should you organize your dotfiles? They should be in their own folder, under version control, and symlinked into place using a script. This has the benefits of:

- **Easy installation**: if you log in to a new machine, applying your customizations will only take a minute.
- **Portability**: your tools will work the same way everywhere.
- **Synchronization**: you can update your dotfiles anywhere and keep them all in sync.
- **Change tracking**: you’re probably going to be maintaining your dotfiles for your entire programming career, and version history is nice to have for long-lived projects