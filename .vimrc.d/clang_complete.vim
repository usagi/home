let g:clang_periodic_quickfix = 1
let g:clang_complete_copen    = 1
let g:clang_use_library       = 1

"let g:clang_library_path  = '/usr/lib/llvm-3.4/lib'
let g:clang_user_options = '-std=c++11 -stdlib=libc++'

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c      = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp    = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc   = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.objcpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

let g:clang_complete_auto = 0
let g:clang_auto_select   = 0
