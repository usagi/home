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

" for Japanese Document
set formatoptions+=mM
set ambiwidth=double
set display+=lastline
set laststatus=2
set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P\

syntax on

" dart
"au BufNewFile,BufRead *.dart setf dart

filetype on
filetype plugin on
filetype indent off

syntax enable

let $BOOST_ROOT = "~/development/includes/boost"
set path+=$BOOST_ROOT

call pathogen#runtime_append_all_bundles()

" move to previous editing point
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Haskell-mode
au Bufenter *.hs compiler ghc
let g:haddock_browser = "w3m"

" find & center
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" Pyclewn: ON
map <F2> <esc>:Pyclewn<cr> :Cfile main<cr> :Cmapkeys<cr>
" Pyclewn: (re)-load executable
map <S-F2> <esc>:Cfile main<cr>
" Pyclewn: Run
map <F5> <esc>:Crun<cr>
" Pyclewn: add debug variable
map <F8> <esc>:Cdbgvar 
" Pyclewn: delete debug variable
map <S-F8> <esc>:Cdelvar 
" Pyclewn: set Break-point
map <F9> <C-b>
" Pyclewn: unset Break-point
map <S-F9> <C-e>
" Pyclewn: Step
map <F10> <C-n>
" Pyclewn: Step in to the internal
map <F11> <S-s>
" Pyclewn: Step out from the scope
map <S-F11> <S-f>
" Pyclewn: to the Next break-point
map <F12> <C-c>
" Pyclewn: exit
map <S-F12> <S-q>

nmap <S-Right> :bn<cr>
nmap <S-Left> :bN<cr>

nmap <S-Home> :sp<cr>
nmap <S-End> :vs<cr>
nmap <S-PageUp> <C-w>w
nmap <S-PageDown> <C-w>W

" Gundo
nmap <S-u> :GundoToggle<cr>

nnoremap <esc><esc> :nohlsearch<cr>

set clipboard+=autoselect

au QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif

"let g:vimfiler_as_default_explorer = 1
"let g:vimfiler_safe_mode_by_default = 0

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
let g:quickrun_config['javascript'] = { 'type': 'js', 'command': 'node' }
let g:quickrun_config['cpp'] = {
      \  'type'    : 'cpp',
      \  'command' : 'g++',
      \  'exec'    : ['%c -std=c++11 %o %s -o %s:p:r', '%s:p:r %a', 'rm -f %s:p:r'],
      \  'tempfile': '%{tempname()}.cpp'
      \ }

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
"imap <expr><C-Space> neosnippet#expandable() ? "\<Plug>(neosnippet_jump_or_expand)" : pumvisible() ? "\<C-n>" : "\<C-Space>"
"vmap <expr><C-Space> neosnippet#expandable() ? "\<Plug>(neosnippet_jump_or_expand)" : "\<C-Space>"

map <C-a> ggVG
