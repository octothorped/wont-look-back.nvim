# zsh-autocomplete MUST be near top
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# alias
source $HOME/.config/zsh/.zsh-alias

# fzf override for ctr+r
FZF_CTRL_R_COMMAND=""
source <(fzf --zsh)

eval "$(starship init zsh)"

# zsh syntax highlighting MUST be at the bottom after all other sources
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

