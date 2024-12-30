
source ~/.antidote/antidote.zsh
antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt

PATH="$HOME/.local/bin:$PATH"

# . "$HOME/.local/bin/env"
eval "$(uv generate-shell-completion zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# autoload -Uz compinit && compinit
eval "$(/home/sbondtaylor/.local/bin/mise activate zsh)"
