sqlite3.blob-xxd()
{
  sqlite3 $1 "select quote(${3}) from ${2} ${4};" \
  | cut -d\' -f2 \
  | xxd -r -p \
  | xxd -g1
}

sqlite3.blob-file()
{
  sqlite3 $1 "select quote(${3}) from ${2} ${4};" \
  | cut -d\' -f2 \
  | xxd -r -p \
  > ${5}
}
