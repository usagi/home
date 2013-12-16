autoload predict-on

#zle -N predict-on
#zle -N predict-off

alias predict.on="predict-on && export ZSH_PREDICT_STATE=0"
alias predict.off="predict-off && export ZSH_PREDICT_STATE=1"

predict.on

predict.toggle()
{
  if [ $ZSH_PREDICT_STATE -eq 0 ]
  then predict.off;
  else predict.on;
  fi;
}

zle -N predict.toggle

bindkey "^[[2~" predict.toggle

zstyle ':predict' verbose true
