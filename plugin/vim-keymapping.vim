
" nore 是指說不要遞迴mapping
inoremap jk <Esc>

" disable 上下左右
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" 自動補完括號
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap ` ``<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap {<CR> {<CR>}<Esc>ko<Tab>

"leader"
noremap <Leader>p "+p
