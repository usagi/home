"quickrun
let g:quickrun_config = { }

let g:quickrun_config['_'] =
  \ { 'hook/time/enable' : '1'
  \ , 'runner' : 'vimproc'
  \ , 'runner/vimproc/updatetime' : 16
  \ }

let g:quickrun_config['markdown'] =
  \ { 'outputter' : 'browser'
  \ , 'type': 'markdown/gfm'
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

let g:quickrun_config['cmake-build'] =
  \ { 'command' : 'cmake'
  \ , 'exec'    : '%c build'
  \ }

"au BufNewFile,BufRead * if &ft!='markdown' | map <Leader>r :QuickRun -outputter error -outputter/error/success buffer -outputter/error quickfix<cr> | endif
