if [ `uname -s` = 'FreeBSD' ]; then
  alias ls='ls -ahHpx'
elif [ `uname -s` = 'Darwin' ]; then
  alias ls='ls -ahHpvx'
else
  alias ls="ls -ahHpvx --group-directories-first --color=auto --time-style=+%Y-%m-%dT%H:%M:%S"
fi
alias ll="ls -l"
