if [ `uname -s` = 'FreeBSD' ]; then
  mozc_server_start
  export XIM=ibus
  export GTK_IM_MODULE=ibus
  export QT_IM_MODULE=xim
  export XMODIFIERS=@im=ibus
  export XIM_PROGRAM="ibus-daemon"
  export XIM_ARGS="-r --daemonize --xim"
fi
