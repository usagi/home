set nocompatible
if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
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
NeoBundleCheck

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'errormarker.vim'
NeoBundle 'osyo-manga/vim-precious'
NeoBundle 'Shougo/context_filetype.vim'
NeoBundle 'vim-jp/cpp-vim'
"NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'rhysd/wandbox-vim'
NeoBundle 'rkitover/vimpager'

