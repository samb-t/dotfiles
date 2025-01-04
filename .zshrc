
source ~/.antidote/antidote.zsh
antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt

PATH="$HOME/.local/bin:$PATH"

# . "$HOME/.local/bin/env"
eval "$(uv generate-shell-completion zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# uv
alias uvr="uv run"

# autoload -Uz compinit && compinit
eval "$(~/.local/bin/mise activate zsh)"
source <(jj util completion zsh)
