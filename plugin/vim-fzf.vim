
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git -o -name *.o \) -prune -o -print'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }



nnoremap <Leader>fz :FZF<cr>
