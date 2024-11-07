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
Programs:
```bash
    # Ubuntu
    sudo apt install stow git nvim zsh
    # Arch
    sudo pacman -S stow git nvim zsh
```

NvChad
```bash
    git clone https://github.com/NvChad/starter
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
```

Wezterm
```bash
    # Ubuntu
    curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/wezterm-fury.gpg
    echo 'deb [signed-by=/etc/apt/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
    sudo apt update
    sudo apt install wezterm
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

## TODO: OhMyZsh && powerlevel10k
