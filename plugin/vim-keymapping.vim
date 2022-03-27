
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
" noremap <Leader>yy "+yy
" noremap <Leader>y "+y
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>ev :vsplit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>

inoremap <c-u> <esc>viwU
nnoremap <c-u> viwU
