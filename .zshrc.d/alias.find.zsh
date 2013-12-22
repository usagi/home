find.bin()
{
  find `echo $PATH | tr : " "` -name $1 2>/dev/null
}

find.include()
{
  find `echo $CPLUS_INCLUDE_PATH | tr : " "` -name $1 2>/dev/null
}
