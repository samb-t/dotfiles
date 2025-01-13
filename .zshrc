
source ~/.antidote/antidote.zsh
antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt

PATH="$HOME/.local/bin:$PATH"

# . "$HOME/.local/bin/env"
eval "$(uv generate-shell-completion zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# autoload -Uz compinit && compinit
eval "$(mise activate zsh)"
source <(jj util completion zsh)

# uv
alias uvr="uv run"

# Nicer CLI tools
# check bat is installed
if command -v bat &> /dev/null; then
    alias cat="bat"
fi
# check eza is installed
if command -v eza &> /dev/null; then
    alias ls="eza --icons=always --group-directories-first"
    alias lst="ls --tree"
fi
