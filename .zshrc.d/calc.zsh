zmodload -i zsh/mathfunc
calc(){ if [ $# != 0 ]; then echo "$(( $* ))"; fi; }
