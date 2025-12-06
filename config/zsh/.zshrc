HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS

autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24h) ]]; then
	compinit;
else
	compinit -C;
fi;

# alias
source $HOME/.config/zsh/.zsh-alias

# fzf override for ctr+r
FZF_CTRL_R_COMMAND=""
source <(fzf --zsh)

eval "$(starship init zsh)"

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="20"
ZSH_AUTOSUGGEST_USE_ASYNC=1
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh syntax highlighting MUST be at the bottom after all other sources
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

