alias vim.tab='vim -p'
alias vim.tab.c++='vim.tab $(find . -iregex "\./\(build\|submodule\).*" -prune -or -iregex ".*\.\(cxx\|hxx\|cpp\|hpp\|c\|h\)$" -print)'
