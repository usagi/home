set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'component': {
\   'readonly': '%{&readonly?"ReadOnly":""}',
\ },
\ 'separator': { 'left': '>', 'right': '<' },
\ 'subseparator': { 'left': '>', 'right': '<' }
\ }