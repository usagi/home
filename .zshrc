export EDITOR=vim
export PATH=$HOME/.cabal/bin:$HOME/opt/bin:$PATH
#export PATH=$HOME/opt/git-tasukete:$PATH
#opt/include
export CMAKE_C_COMPILER=/usr/bin/gcc
export CPLUS_INCLUDE_PATH=$HOME/opt/include:$CPLUS_INCLUDE_PATH
#crystal space
export CPLUS_INCLUDE_PATH=$HOME/opt/crystal_space/current/include:$CPLUS_INCLUDE_PATH
export LD_LIBRARY_PATH=$HOME/opt/crystal_space/current:$LD_LIBRARY_PATH
#export BOOST_ROOT=/usr
#export SKKSERVER=localhost
#native client
export NACL_SDK_ROOT=$HOME/opt/nacl_sdk/pepper_target/
#android SDK
export ANDROID_HOME=$HOME/opt/android/sdk
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH
#android NDK
export ANDROIDNDK_HOME=/opt/android-ndk
export PATH=$ANDROIDNDK_HOME:$PATH
#QT
export QML_IMPORT_TRACE=1

autoload colors
colors

autoload -U compinit
compinit

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

export LANG=ja_JP.UTF-8
#export LANG=en_US.UTF-8
#export LANG=C

case ${UID} in
0)
  PROMPT="%B%{${fg[red]}%}%/
  <<%{${reset_color}%}%b "
  PROMPT2="%B%{${fg[red]}%}%_
  <<%{${reset_color}%}%b "
  SPROMPT="%B%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
#  [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
    PROMPT="%{${fg[white]}%}${HOST%%.*} ${PROMPT}"
  ;;
*)
  PROMPT="%{${fg[red]}%}%/
  <<%{${reset_color}%} "
  PROMPT2="%{${fg[red]}%}%_
  <<%{${reset_color}%} "
  SPROMPT="%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%} "
#  [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
    PROMPT="%{${fg[white]}%}${HOST%%.*} ${PROMPT}"
  ;;
esac

## terminal configuration
#
unset LSCOLORS
case "${TERM}" in
xterm)
  export TERM=xterm-color
  ;;
kterm)
  export TERM=kterm-color
  # set BackSpace control character
  stty erase
  ;;
cons25)
  unset LANG
  export LSCOLORS=ExFxCxdxBxegedabagacad
  export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
  zstyle ':completion:*' list-colors \
    'di=;34;1' 'ln=;35;1' 'so=;32;1' 'ex=31;1' 'bd=46;34' 'cd=43;34'
  ;;
esac

# set terminal title including current directory
#
case "${TERM}" in
kterm*|xterm*)
  precmd() {
    echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
  }
  export LSCOLORS=exfxcxdxbxegedabagacad
  export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
  zstyle ':completion:*' list-colors \
    'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
  ;;
esac

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
#file/dir completions work

autoload predict-on
predict-on

alias where="command -v"

alias ls="ls -lah --color=auto"
alias la="ls -la"
alias lf="ls -Fa"
alias ll="ls -la"

alias du="du -h"
alias df="df -h"

alias screen="screen -U -O"

alias gvim="nocorrect gvim"
alias links="nocorrect links"
alias git="nocorrect git"

alias ghc-3="ghc -threaded -O3"
alias ghc-dph="ghc -threaded -Odph -fllvm -optlo-O3"

alias g++0x="g++ --std=c++0x"
alias g++11="g++ --std=c++11"
alias g++11-4.8="g++-4.8 --std=c++11"

alias clang++11="clang++ --std=c++11"

alias opcontrol="sudo opcontrol"

#alias pacman="sudo pacman-color"
#alias pnc="pacman -S --noconfirm"
#alias pss="pacman -Ss"
#alias psyu="pacman -Syu"
#alias psy="pacman -Sy"
#alias psu="pacman -Su"
#alias yaourt="sudo yaourt"
#alias ync="yaourt -S --noconfirm"
#alias yss="yaourt -Ss"
#alias yyu="yaourt -Syu"

obs-search(){ if [ $# != 0 ]; then w3m "http://software.opensuse.org/search?q=$*"; fi; }
alias yast="sudo su -c yast"
alias zypper="sudo zypper -v"
alias rpm="sudo rpm"

alias reboot="sudo reboot"
alias shutdown="sudo shutdown"

alias reload="source ~/.zshrc"

alias w3m-google="w3m http://www.google.co.jp"

alias rc.d="sudo rc.d"

alias chown="sudo chown"
alias chgrp="sudo chgrp"
alias gpasswd="sudo gpasswd"
alias adduser="sudo adduser"
alias usermod="sudo usermod"

alias mozc-dictionary="/usr/lib/mozc/mozc_tool --mode=dictionary_tool"
alias mozc-config="/usr/lib/mozc/mozc_tool --mode=config_dialog"
alias ntpdate-hwclock="sudo ntpdate 210.173.160.27 && sudo hwclock --systohc"

alias vim~="vim ~"
alias vim.="vim ."
alias vim..="vim .."

alias gvim~="gvim ~"
alias gvim.="gvim ."
alias gvim..="gvim .."

alias doxygen-generate="doxygen -g && doxygen -w html header.html footer.html main.css"

alias psgrep="sudo ps -ax | grep"
alias pspercol="sudo ps -ax | percol"

alias kill="sudo kill"

alias mount="sudo mount"
alias umount="sudo umount"

#alias g="egrep -nr"
g(){ egrep -nr $1 | sort; }

alc(){ if [ $# != 0 ]; then w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa"; fi; }

alias time++="/usr/bin/time --verbose"

alias chmod-files="find . -type f -print | xargs chmod"
alias chmod-directories="find . -type d -print | xargs chmod"

alias date="date --iso-8601=minutes"
alias psegrep="ps ax | egrep"

alias :e="qvim"
alias :q="exit"

alias @LH-SVR1="ssh LH-SVR1"
alias @LH-SVR2="ssh LH-SVR2"
alias @LH-SVR3="ssh LH-SVR3"
alias @LH-SVR4="ssh LH-SVR4"
alias @LH-SVR5="ssh LH-SVR5"
alias @LH-MAIN="ssh LH-MAIN"
alias @LH-LAB1="ssh LH-LAB1 -p 443"
alias @LH-NB1="ssh LH-NB1"
alias @xn--qiq2o.jp="ssh xn--qiq2o.jp"

setopt multios

xset r rate 168 48
xmodmap -e "keycode 100 = F5"
xmodmap -e "keycode 102 = F6"
xmodmap -e "keycode 133 = Escape"

