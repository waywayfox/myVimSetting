
" basic autogroup {{{
augroup basic_group
  autocmd WinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
  " %代表所有行，e代表不顯示錯誤。
  autocmd BufWritePre * :%s/\s\+$//e
augroup END
" }}}

" FileType VIM autogroup {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim :let maplocalleader='\\'
  autocmd FileType vim :nnoremap <buffer> <localleader>/ I"<esc>
  autocmd FileType vim :vnoremap <buffer> <localleader>/ :normal! I" <esc>
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

" FileType sh autogroup {{{
augroup filetype_sh
  autocmd!
  autocmd FileType sh :let maplocalleader='\\'
  autocmd FileType sh :nnoremap <buffer> <localleader>/ I# <esc>
  autocmd FileType sh :vnoremap <buffer> <localleader>/ :normal! I# <esc>
  autocmd FileType sh :nnoremap <buffer> <localleader>b I#!/bin/bash<esc>10o<esc>
  autocmd FileType sh :nnoremap <buffer> <localleader>op Iwhile getopts "w:" opt; do<CR>case $opt in<CR>w ) width="$OPTARG" ;;<CR>esac<CR>done<CR>shift $(( $OPTIND - 1 ))<esc>
  autocmd FileType sh :iabbrev iffi if [  ] ; then<CR><CR>fi<ESC>kk0f[l





augroup END
" }}}

" FileType Javascript autogroup {{{
augroup filetype_javascript
  autocmd!
  autocmd FileType javascript :let maplocalleader='_'
  autocmd FileType javascript :nnoremap <buffer> <localleader>/ I//<esc>
  autocmd FileType javascript :vnoremap <buffer> <localleader>/ :normal! I// <esc>
  "react jsx comment
  autocmd FileType javascript :nnoremap <buffer> <localleader>r/ I{/**<esc>A**/}<esc>
  autocmd FileType javascript :vnoremap <buffer> <localleader>r/ I<CR><Up>{/***<esc>`>o***/}<esc>




 "react snippets"
autocmd FileType javascript :iabbrev rce import { Component } from "react<esc>A;<CR><CR> export default class $CFN extends Component {<CR> constuctor(props) {<CR> super(props)<CR><CR> this.state = {}<CR> }<CR><CR> render() {<CR> return null<CR> }<CR> }
autocmd FileType javascript :iabbrev rim import { Component } from "react<esc>A;<esc>

augroup END
" }}}

