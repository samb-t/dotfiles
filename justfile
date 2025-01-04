@install_mise:
    curl https://mise.run | sh

@mise_package_requirements:
    sudo apt install autotools-dev
    sudo apt install automake
    sudo apt install ncurses-dev
    sudo apt install bison byacc -y
    mise plugin add tmux
    mise plugin add neovim

@mise_install
    mise install

@install_lazyvim:
    git clone https://github.com/LazyVim/starter ~/.config/nvim

# Cargo is not recommended for now
@install_uv:
    if ! command -v uv >/dev/null 2>&1; then \
        curl -LsSf https://astral.sh/uv/install.sh | sh \
    fi

@install_ruff:
    uv tool install ruff

@install_antidote:
    git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote

@install_tpm:
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

@install_zsh_apt
    sudo apt install zsh
    sudo chsh -s $(which zsh)

@install_stow
    sudo apt install stow
