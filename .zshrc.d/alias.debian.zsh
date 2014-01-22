if [ -f /etc/debian_version ]; then
  alias rc.d="sudo rc.d"
  alias apt="sudo apt"
  alias apt-get="sudo apt-get"
  alias ack="ack-grep"
  alias chromium="chromium-browser"
  alias chrome="google-chrome"
fi
