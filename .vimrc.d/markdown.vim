autocmd BufNewFile,BufRead *.md,*.markdown set filetype=markdown
augroup markdown
let quickrun_no_quickfix = 1
augroup END