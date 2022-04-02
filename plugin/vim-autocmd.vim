
" basic autogroup {{{
augroup basic_group
  autocmd WinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
  autocmd BufWritePre * :%s/\s\+$//e
augroup END
" }}}

" FileType VIM autogroup {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim :let maplocalleader='\\'
  autocmd FileType vim :nnoremap <buffer> <leader>/ I"<esc>
  autocmd FileType vim :setlocal foldmethod=marker
  autocmd FileType vim :setlocal foldlevelstart=0
augroup END
" }}}

" FileType LUA autogroup {{{
augroup filetype_lua
  autocmd!
  autocmd FileType lua :let maplocalleader='\\'
  autocmd FileType lua :nnoremap <buffer> <localleader>/ I--<esc>
augroup END
" }}}

" FileType Javascript autogroup {{{
augroup filetype_javascript
  autocmd!
  autocmd FileType javascript :let maplocalleader='_'
  autocmd FileType javascript :nnoremap <buffer> <localleader>/ I//<esc>
augroup END
" }}}

" FileType HTML autogroup {{{
augroup filetype_html
  autocmd!
  autocmd FileType html :let maplocalleader='\\'
  "fold a tag"
  autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
"}}}























