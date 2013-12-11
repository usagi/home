if [ -d .zshrc.d ]; then
  for f in `find .zshrc.d -name '*.zsh'`; do
    source $f
  done
fi
