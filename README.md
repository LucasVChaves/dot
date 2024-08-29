# My dotfiles

For the dotfiles management I use [GNU Stow](https://www.gnu.org/software/stow/).

## Using stow
Setup your dotfiles inside the stow repo in the same structure they have in your home dir. 
Then run 
```bash
    stow .
```

## Neovim
I use NVIM with NvChad, TreeSitter and Mason. The configuration is in `.config/nvim` folder.

## Zsh
I use Zsh with OhMyZsh. The configuration is in `.zshrc` file.

## Installation

### Requirements
```bash
    # Ubuntu
    sudo apt install stow git
    # Arch
    sudo pacman -S stow git

    git clone https://github.com/NvChad/starter
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Repository
```bash
    git clone git@github.com:LucasVChaves/dot.git
    cd dot
    stow --adopt .
```

### NeoVim
```bash
    vim
    :MasonInstallAll
    rm -r ~/.config/nvim/.git
```
