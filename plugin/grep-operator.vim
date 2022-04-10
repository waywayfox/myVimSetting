
nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

function! s:GrepOperator(type)
  echom a:type
  let saved_unnamed_register = @@
  if a:type ==# 'v'
    execute "normal! `<v`>y"
  elseif a:type ==# 'char'
    execute "normal! `[v`]y"
  else
    return
  endif

  " after ynak the last select word or range, call grep
  " @@ is unnamed register
  silent execute "grep! -R " . shellescape(@@) . " ."
  copen 10
  let @@ = saved_unnamed_register
endfunction

