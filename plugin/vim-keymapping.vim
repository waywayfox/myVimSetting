
" nore 是指說不要遞迴mapping
inoremap jk <Esc>

" disable 上下左右
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" 自動補完括號
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
"inoremap ` ``<Esc>i
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap {<CR> {<CR>}<Esc>ko<Tab>

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

nnoremap <Leader>o o<Esc>


inoremap <c-u> <esc>viwU
nnoremap <c-u> viwU

" stop highlight
nnoremap <Leader>/ :noh<cr>


" use very magic
:nnoremap / /\v



" grep
" :nnoremap <leader>g :execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen 10<cr>
":nnoremap <leader>q :copen<cr>
":nnoremap <leader>Q :cclose<cr>
:nnoremap <leader>c :cnext<cr>
:nnoremap <leader>C :cprevious<cr>

nnoremap <leader>q :silent call <SID>QuickfixToggle()<cr>

function! s:QuickfixToggle()
  let s:isopen = 0
  for winnr in range(1, winnr('$'))
    if getwinvar(winnr, '&syntax') ==# 'qf'
      let s:isopen = 1
    endif
  endfor

  if s:isopen
    cclose
  else
    copen
  endif
endfunction











