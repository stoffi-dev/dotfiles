## Description 

This repo holds all my dotfile configuration.

## Installation

Clone the repo onto the desired system.

Inside the directory you can install each applicant configuration manually or
with the script provided.

### Automatically

Run the following commands in the dotfiles directory

```
    chmod +x ./install
```
```
    ./install
```

### Manually

Run the command:
```
    stow <folder name>
```

### Vim and NVIM

Once installed, run vim or nvim from the command line. Some packages will auto
install, however you may need to issue the command :PlugInstall inside vim/nvim.
This will complete the plugin installation.

## Un-Installation

### Automatically

Inside the .dotfiles directory

```
    chmod +x ./clean-env
```
```
    ./clean-env
```

This will uninstall all stow links in your local system.

### Manually

Use the command: 

```
   stow -D <folder name>
```

This will uninstall the particular folder in .dotfiles directory from your system.


### Dependencies

