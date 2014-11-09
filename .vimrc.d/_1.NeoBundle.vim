set nocompatible
if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc',{
  \'build':{
    \'windows':'make -f make_mingw32.mak',
    \'cygwin':'make -f make_cygwin.mak',
    \'mac':'make -f make_mac.mak',
    \'unix':'make -f make_unix.mak'
  \}
\}
filetype plugin indent on

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'errormarker.vim'
NeoBundle 'osyo-manga/vim-precious'
NeoBundle 'Shougo/context_filetype.vim'
NeoBundle 'Shougo/vinarise.vim'
NeoBundle 'vim-jp/cpp-vim'
"NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'rhysd/wandbox-vim'
NeoBundle 'rkitover/vimpager'
"NeoBundle 'tyru/open-browser.vim'
"NeoBundle 'mattn/webapi-vim'
"NeoBundle 'superbrothers/vim-quickrun-markdown-gfm'

"rust bundle vim settings
NeoBundle 'vim', { 'type' : 'nosync', 'base' : '~/repos/rust/src/etc' }

call neobundle#end()

NeoBundleCheck
