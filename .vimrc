if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

let neobundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)
  echo 'Installing NeoBundle...'
  echo ''
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

NeoBundle 'tomasr/molokai'
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Rip-Rip/clang_complete'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'tyru/caw.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'kana/vim-operator-user'
NeoBundle 'rhysd/vim-clang-format'
NeoBundle 'Shougo/vinarise.vim'
NeoBundle 'vim-jp/cpp-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'thinca/vim-quickrun'

call neobundle#end()

NeoBundleCheck

filetype plugin indent on

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set backspace=indent,eol,start

set hidden
set autoread
set nobackup
set noswapfile

set hlsearch
set incsearch
set ignorecase
set smartcase

set bomb
set ttyfast
set binary

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh

syntax on
set ruler
set number

let no_buffers_menu=1
highlight BadWhitespace ctermbg=red guibg=red
colorscheme molokai

set mousemodel=popup
set t_Co=256
set cursorline
set cursorcolumn
set guioptions=egmrti
set gfn=Ricty\ 8

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Ricty:h12
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1

  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif
endif

if &term =~ '256color'
  set t_ut=
endif

set gcr=a:blinkon0

set scrolloff=8
set sidescrolloff=16
set sidescroll=1

set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\ %{fugitive#statusline()}

set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab

let mapleader=','

noremap <leader>h :<C-u>split<CR>
noremap <leader>v :<C-u>vsplit<CR>

noremap <leader>ga :!git add .<CR>
noremap <leader>gc :!git commit -m '<C-R>="'"<CR>
noremap <leader>gsh :!git push<CR>
noremap <leader>gs :Gstatus<CR>
noremap <leader>gb :Gblame<CR>
noremap <leader>gd :Gvdiff<CR>
noremap <leader>gr :Gremove<CR>

nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

nnoremap <tab> gt
nnoremap <s-tab> gT
nnoremap <s-t> :tabnew<cr>

noremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
noremap <leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

nmap <leader>c <plug>(caw:I:toggle)
nmap <leader>C <plug>(caw:I:uncomment)

nnoremap <c-a> ggVG

nmap == ggVG<plug>(operator-clang-format)
nmap = V<plug>(operator-clang-format)

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q

set whichwrap=b,s,h,l,<,>,[,]

set list
set showmatch
set laststatus=2

set shellslash
set clipboard=unnamed,unnamedplus
set iminsert=2

set wildmenu wildmode=list:longest,full
set history=8192

autocmd BufEnter * :syntax sync fromstart

autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

autocmd BufRead,BufNewFile *.txt call s:setupWrapping()

autocmd FileType make setlocal noexpandtab
autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake

let g:clang_periodic_quickfix = 0
let g:clang_complete_copen    = 0
let g:clang_use_library       = 1
let g:clang_library_path  = '/usr/lib/llvm-3.5/lib'
let g:clang_user_options  = '-std=c++11 -stdlib=libc++'
let g:clang_complete_auto = 0
let g:clang_auto_select   = 0

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#skip_auto_completion_time = ""
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c      = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp    = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc   = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.objcpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

let g:airline_theme = 'powerlineish'
let g:airline_enable_branch = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tagbar#enabled = 1

let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

let g:clang_format#command = 'clang-format-3.5'
let g:clang_format#style_options = {
  \ 'BasedOnStyle'                     : 'LLVM',
  \ 'Standard'                         : 'C++11',
  \ 'AlignEscapedNewlinesLeft'         : 'true',
  \ 'AlwaysBreakBeforeMultilineStrings': 'true',
  \ 'Cpp11BracedListStyle'             : 'true',
  \ 'IndentWidth'                      : 2,
  \ 'TabWidth'                         : 2,
  \ 'NamespaceIndentation'             : 'All',
  \ 'BreakBeforeBraces'                : 'Allman',
  \ 'SpacesInParentheses'              : 'true',
  \ 'SpacesInAngles'                   : 'true',
  \ 'SpaceBeforeParens'                : 'ControlStatements',
  \ 'SpaceBeforeAssignmentOperators'   : 'false',
  \ 'CommentPragmas'                   : '\*',
  \ }

let g:quickrun_config['html'] = { 'type': 'html/w3m' }
let g:quickrun_config['html/w3m']      = { 'command': 'w3m' }
let g:quickrun_config['html/chromium'] = { 'command': 'chromium' }
let g:quickrun_config['html/firefox']  = { 'command': 'firefox' }

let g:quickrun_config['cpp'] = { 'type' : 'cpp/clang++' }
let g:quickrun_config['cpp/clang++'] =
  \ { 'command' : 'clang++'
  \ , 'cmdopt'  : '-std=c++11 -Wall -pedantic-errors'
  \ }
let g:quickrun_config['cpp/g++'] =
  \ { 'command' : 'clang++'
  \ , 'cmdopt'  : '-std=c++11 -Wall -pedantic-errors'
  \ }
let g:quickrun_config['cpp/em++'] = { 'type' : 'cpp/em++/js' }
let g:quickrun_config['cpp/em++/js'] =
  \ { 'command' : 'em++'
  \ , 'cmdopt'  : '-std=c++11 -Wall -pedantic-errors'
  \ }
let g:quickrun_config['cpp/em++/html'] =
  \ { 'command' : 'em++'
  \ , 'cmdopt'  : '-std=c++11 -Wall -pedantic-errors'
  \ }

function! s:cpp()
  setlocal path+=~/include,/usr/local/include,/usr/include
  setlocal matchpairs+=<:>
  nnoremap <buffer><silent> <space>ii :execute "?".&include<cr> :noh<cr> o
endfunction

augroup vimrc-cpp
  autocmd!
  autocmd FileType cpp call s:cpp()
augroup END

let $CPP_STDLIB = '/usr/include/c++'

augroup vimrc-set_filetype_cpp
  autocmd!
  autocmd BufReadPost $CPP_STDLIB/* if empty(&filetype) | set filetype=cpp | endif
augroup END

