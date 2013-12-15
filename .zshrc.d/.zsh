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
#setopt correct
setopt list_packed
setopt nolistbeep
#setopt noautoremoveslash
setopt complete_aliases

autoload predict-on

#zle -N predict-on
#zle -N predict-off

alias predict-on="predict-on && export ZSH_PREDICT_STATE=0"
alias predict-off="predict-off && export ZSH_PREDICT_STATE=1"

predict-on

predict-toggle()
{
  if [ $ZSH_PREDICT_STATE -eq 0 ]
  then predict-off;
  else predict-on;
  fi;
}

zle -N predict-toggle

bindkey "^[[2~" predict-toggle

zstyle ':predict' verbose true

setopt multios
