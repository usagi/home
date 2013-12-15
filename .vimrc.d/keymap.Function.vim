nmap <F2> <C-w>gf

nmap <F5> :!`find . -perm -u+x -type f`<cr>
nmap <S-F5> <S-F6><F5>

nmap <F6> :!test -f Makefile && make \|\| test -f build.ninja && ninja<cr>
nmap <C-F6> :!test -f Makefile && make clean && make \|\| test -f build.ninja && ninja -t clean<cr>
nmap <S-F6> <C-F6><F6>