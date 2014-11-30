if [ `uname -s` = 'FreeBSD' ]; then
  find.ports()
  {
    find \
      /usr/ports \
      -iname "*$1*" \
      2>/dev/null \
    | sort | uniq
  }
fi

find.bin()
{
  find \
    `echo $PATH | tr : " "` \
    ~/bin \
    /local/bin \
    -iname "*$1*" \
    2>/dev/null \
  | sort | uniq
}

find.include()
{
  find \
    `echo $CPLUS_INCLUDE_PATH | tr : " "` \
    ~/include \
    /usr/local/include \
    /usr/include \
    /local/include \
    -iname "*$1*" \
    2>/dev/null \
  | sort | uniq
}

find.lib()
{
  find \
    `echo $LD_LIBRARY_PATH | tr : " "` \
    ~/lib \
    /usr/local/lib \
    /usr/lib \
    /local/lib \
    -iname "*$1*" \
    2>/dev/null \
  | sort | uniq
}

