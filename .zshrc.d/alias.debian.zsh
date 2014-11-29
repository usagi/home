if [ -f /etc/debian_version ]; then
  echo '[zshrc/alias.debian]'
  if which ack > /dev/null; then
    echo '  ack             : found';
  else
    echo '  ack             : not found'
    if which ack-grep > /dev/null; then
      echo '    ack-grep      : found; set alias to ack'
      alias ack="ack-grep"
    else
      echo '    WARN          : cannot use ack'
    fi
  fi
  if which chromium-browser > /dev/null; then
    echo '  chromium-browser: found; set alias to chromium'
    alias chromium="chromium-browser"
  fi
  if which google-chrome > /dev/null; then
    echo '  google-chrome   : found; set alias chrome'
    alias chrome="google-chrome"
  fi
fi
