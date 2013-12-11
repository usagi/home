autoload colors
colors

autoload -U compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=8192
SAVEHIST=8192
setopt hist_ignore_dups
setopt share_history

bindkey -v
bindkey "^[[3~" delete-char

setopt auto_cd
setopt auto_pushd
setopt correct
setopt list_packed
#setopt nolistbeep
setopt noautoremoveslash
setopt complete_aliases

autoload predict-on
predict-on

setopt multios
