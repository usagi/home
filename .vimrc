runtime! ../.vimrc.d/*.vim

scriptencoding utf-8
set encoding=utf-8

colorscheme desert

set runtimepath+=~/.vim
set hlsearch
set autoindent
"set cindent
"set smartindent
if has('parsistent_undo')
  set undodir=~/.vimtmp,~/tmp,~,.
  set undofile
endif
set backupdir=~/.vimtmp,~/tmp,~,.
set browsedir=buffer
set clipboard=unnamed
set nocompatible
set directory=~/.vimtmp,~/tmp,~,.
set expandtab
set hidden
set incsearch
set number
set showmatch
set smartcase
set smarttab
set sw=2 ts=2 et
set whichwrap=b,s,h,l,<,>,[,]
set nowrapscan
set wildmode=longest:full,full
set completeopt=menuone,preview
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" tab
set stal=2


" for Japanese Document
set formatoptions+=mM
"set ambiwidth=double
set display+=lastline
set laststatus=2
set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P\

" lightline
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'component': {
\   'readonly': '%{&readonly?"ReadOnly":""}',
\ },
\ 'separator': { 'left': '>', 'right': '<' },
\ 'subseparator': { 'left': '>', 'right': '<' }
\ }

syntax on

filetype on
filetype plugin on
filetype indent off

let c_no_curly_error=0

let $USER_OPT_INCLUDE = "/home/usagi/opt/include"
set path+=$USER_OPT_INCLUDE

"let g:vim_markdown_folding_disabled=1

" move to previous editing point
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Haskell-mode
au Bufenter *.hs compiler ghc
let g:haddock_browser = "w3m"

" typescript
au Bufenter *.ts setf typescript

" GLSL
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl

" find & center
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" Pyclewn: ON
"map <F2> <esc>:Pyclewn<cr> :Cfile main<cr> :Cmapkeys<cr>
" Pyclewn: (re)-load executable
"map <S-F2> <esc>:Cfile main<cr>
" Pyclewn: Run
"map <F5> <esc>:Crun<cr>
" Pyclewn: add debug variable
"map <F8> <esc>:Cdbgvar 
" Pyclewn: delete debug variable
"map <S-F8> <esc>:Cdelvar 
" Pyclewn: set Break-point
"map <F9> <C-b>
" Pyclewn: unset Break-point
"map <S-F9> <C-e>
" Pyclewn: Step
"map <F10> <C-n>
" Pyclewn: Step in to the internal
"map <F11> <S-s>
" Pyclewn: Step out from the scope
"map <S-F11> <S-f>
" Pyclewn: to the Next break-point
"map <F12> <C-c>
" Pyclewn: exit
"map <S-F12> <S-q>

" inter-buffer move
nnoremap <C-S-Left> :bn<cr>
nnoremap <C-S-Right> :bN<cr>
" inter-tab move
nnoremap <S-Left> gT
nnoremap <S-Right> gt

nnoremap <S-Home> :sp<cr>
nnoremap <S-End> :vs<cr>
nmap <S-PageUp> <C-w>w
nmap <S-PageDown> <C-w>W

" Gundo
nnoremap <S-u> :GundoToggle<cr>

nnoremap <esc><esc> :nohlsearch<cr>

set clipboard+=autoselect

au QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif

set gfm=%f:%l:%m,%f:%l:%m,%f\ \ %l%m,%f
set gp=grep\ -nh

" open tempname()
nmap <C-t> :e `=tempname()`<cr>

" indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
"let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#433d3c
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#544a47

"QML
autocmd BufNewFile,BufRead *.qml set filetype=qml

"Markdown
autocmd BufNewFile,BufRead *.md,*.markdown set filetype=markdown
augroup markdown
let quickrun_no_quickfix = 1
augroup END


"errormaker.vim
let g:errormarker_errortext="!!"
let g:errormarker_warningtext="??"
let g:errormarker_errorgroup="Error"
let g:errormarker_warninggroup="Warning"

"reverse-indent
map <S-Tab> <<
imap <S-Tab> <Esc><<i

"indent
map <Tab> >>
imap <Tab> <Esc>>>i

"space
map <space> i<space><esc>l
map <bs> i<bs><esc>l

"quickrun
let g:quickrun_config = { }

let g:quickrun_config['_'] =
  \ { 'hook/time/enable' : '1'
  \ , 'runner' : 'vimproc'
  \ , 'runner/vimproc/updatetime' : 16
  \ }

let g:quickrun_config['markdown'] =
  \ { 'outputter' : 'browser'
  \ , 'type': 'markdown/pandoc'
  \ }

let g:quickrun_config['markdown/pandoc'] =
  \ { 'command': 'pandoc'
  \ , 'exec': '%c --from=markdown_phpextra --to=html5 %o %s %a'
  \ }

let g:quickrun_config['html'] = { 'type': 'html/w3m' }
let g:quickrun_config['html/w3m']      = { 'command': 'w3m' }
let g:quickrun_config['html/chromium'] = { 'command': 'chromium' }
let g:quickrun_config['html/firefox']  = { 'command': 'firefox' }

let g:quickrun_config['cpp'] = { 'type' : 'cpp/clang++' }
let g:quickrun_config['cpp/clang++'] =
  \ { 'command' : 'clang++'
  \ , 'exec'    : [ '%c -std=c++11 -Wall -pedantic-errors %o %s -o %s:p:r'
  \               , '%s:p:r %a'
  \               , 'rm -f %s:p:r'
  \               ]
  \ , 'tempfile': '%{tempname()}.cpp'
  \ }
let g:quickrun_config['cpp/g++'] =
  \ { 'command' : 'clang++'
  \ , 'exec'    : [ '%c -std=c++11 -Wall -pedantic-errors %o %s -o %s:p:r'
  \               , '%s:p:r %a'
  \               , 'rm -f %s:p:r'
  \               ]
  \ , 'tempfile': '%{tempname()}.cpp'
  \ }
let g:quickrun_config['cpp/em++'] = { 'type' : 'cpp/em++/js' }
let g:quickrun_config['cpp/em++/js'] =
  \ { 'command' : 'em++'
  \ , 'exec'    : [ '%c -std=c++11 -Wall -pedantic-errors %o %s -o %s:p:r.js'
  \               , '%s:p:r.js %a'
  \               , 'rm -f %s:p:r.js'
  \               ]
  \ , 'tempfile': '%{tempname()}.cpp'
  \ }
let g:quickrun_config['cpp/em++/html'] =
  \ { 'command' : 'em++'
  \ , 'exec'    : [ '%c -std=c++11 -Wall -pedantic-errors %o %s -o %s:p:r.html'
  \               , '%s:p:r.html %a'
  \               , 'rm -f %s:p:r.html'
  \               ]
  \ , 'tempfile': '%{tempname()}.cpp'
  \ }

let g:quickrun_config['cmake-build'] =
  \ { 'command' : 'cmake'
  \ , 'exec'    : '%c build'
  \ }

"au BufNewFile,BufRead * if &ft!='markdown' | map <Leader>r :QuickRun -outputter error -outputter/error/success buffer -outputter/error quickfix<cr> | endif

" comment toggle
imap <S-space> <esc><Plug>(caw:I:toggle)
nmap <S-space> <Plug>(caw:I:toggle)
vmap <S-space> <Plug>(caw:I:toggle)

nmap <C-a> ggVG

nmap <F5> :!`find . -perm -u+x -type f`<cr>
nmap <S-F5> <S-F6><F5>

nmap <F6> :!test -f Makefile && make \|\| test -f build.ninja && ninja<cr>
nmap <C-F6> :!test -f Makefile && make clean && make \|\| test -f build.ninja && ninja -t clean<cr>
nmap <S-F6> <C-F6><F6>

nmap <F2> <C-w>gf

set whichwrap=b,s,<,>,[,]
