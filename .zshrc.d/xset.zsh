echo '[zshrc/xset]'

xset_key_repeat_wait=237
xset_key_repeat_delay=48

xset_is_exists=`which xset >> /dev/null && echo $?`

if [ $xset_is_exists ]; then
  echo "  repeat wait : ${xset_key_repeat_wait}"
  echo "  repeat delay: ${xset_key_repeat_delay}"
  xset r rate ${xset_key_repeat_wait} ${xset_key_repeat_delay}
else
  echo '  xset is not found'
fi

