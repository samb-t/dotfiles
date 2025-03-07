
source ~/.antidote/antidote.zsh
antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt

PATH="$HOME/.local/bin:$PATH"

eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"
_uv_run_mod() {
    if [[ "$words[2]" == "run" && "$words[CURRENT]" != -* ]]; then
        _arguments '*:filename:_files'
    else
        _uv "$@"
    fi
}
compdef _uv_run_mod uv

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# autoload -Uz compinit && compinit
eval "$(mise activate zsh)"
source <(jj util completion zsh)

# jj aliases
alias jjgp="jj git push"

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

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
