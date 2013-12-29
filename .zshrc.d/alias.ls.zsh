if [ `uname -s` = 'Darwin' ]; then
  alias ls='ls -ahHLpvx'
else
  alias ls="ls -ahHLpvx --group-directories-first --color=auto --time-style=+%Y-%m-%dT%H:%M:%S"
fi
alias ll="ls -l"
