set autoindent
"set cindent
"set smartindent

set expandtab
set smarttab
set stal=2

set sw=2 ts=2 et

"reverse-indent
map <S-Tab> <<<Esc>
imap <S-Tab> <Esc><<i

"indent
map <Tab> >><Esc>
imap <Tab> <Esc>>>i
