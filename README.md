## Description 

This vimrc will auto install vim-plug package manager + any packages that are referenced in the .vimrc file.

Currently plugins included are:

- Gruvbox colorscheme
- Minimalist colorscheme
- CRTLP
- go-vim

## Installation

Clone the repo onto the desired system.

Use the command:
        stow <folder name>

Run vim and the .vimrc will install the plugin manager and any missing plugins automatically.

## Un-Installation

Use the command: 
        stow -D <folder name>

This will uninstall the particular folder in .dotfiles directory from your system.

## Coming soon

Using ./install to install all folders into the system.

Using ./clean-env to remove all stow installed files from the system.
