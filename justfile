@install_mise:
    curl https://mise.run | sh

@mise_install_tmux:
    sudo apt install autotools-dev
    sudo apt install automake
    sudo apt install ncurses-dev
    mise plugin add tmux
    mise use --global tmux

@mise_install_neovim:
    mise plugin add neovim
    mise use --global neovim

@mise_install_node:
    mise use --global node

@install_lazyvim:
    git clone https://github.com/LazyVim/starter ~/.config/nvim

@install_cargo:
    mise use --global rust
    # mise use --global cargo-binstall

@install_starship:
    mise use --global cargo:starship

@install_yazi:
    mise use --global cargo:yazi-fm cargo:yazi-cli

@install_zoxide:
    mise use --global cargo:zoxide

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
