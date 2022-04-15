function! Sorted(l)
  let new_list = deepcopy(a:l)
  call sort(new_list)
  return new_list
endfunction

function! Reversed(l)
  let new_list = deepcopy(a:l)
  call reverse(new_list)
  return new_list
endfunction

function! Append(l, val)
  let new_list = deepcopy(a:l)
  call add(new_list, a:val)
  return new_list
endfunction

function! Assoc(l, i, val)
  let new_list = deepcopy(a:l)
  if type(new_list) ==# v:t_list
    if type(a:i) ==# v:t_number && a:i < len(new_list)
      let new_list[a:i] = a:val
    endif
  elseif type(new_list) ==# v:t_dict
    if has_key(new_list, a:i)
      let new_list[a:i] = a:val
    endif
  endif
  return new_list
endfunction

function! Pop(l, i)
  let new_list = deepcopy(a:l)
  if type(new_list) ==# v:t_list
    if type(a:i) ==# v:t_number && a:i < len(new_list)
      call remove(new_list, a:i)
    endif
  elseif type(new_list) ==# v:t_dict
    if has_key(new_list, a:i)
      call remove(new_list, a:i)
    endif
  endif
  return new_list
endfunction

function! Mapped(fn, l)
  let new_list = deepcopy(a:l)
  if type(new_list) ==# v:t_list
    call map(new_list, string(a:fn) . '(v:val)')
  elseif type(new_list) ==# v:t_dict
    call map(new_list, string(a:fn) . '(v:key, v:val)')
  endif
  return new_list
endfunction

function! Filtered(fn, l)
  let new_list = deepcopy(a:l)
  if type(new_list) ==# v:t_list
    call filter(new_list, string(a:fn) . '(v:val)')
  elseif type(new_list) ==# v:t_dict
    call filter(new_list, string(a:fn) . '(v:key, v:val)')
  endif
  return new_list
endfunction


function! Removed(fn, l)
  let new_list = deepcopy(a:l)
  if type(new_list) ==# v:t_list
    call filter(new_list, '!' . string(a:fn) . '(v:val)')
  elseif type(new_list) ==# v:t_dict
    call filter(new_list, '!' . string(a:fn) . '(v:key, v:val)')
  endif
  return new_list
endfunction

"""
" {param} fn       a funcref, if l is list, the function should have 3 parameters (accumulator, value, list),
"                  if l is dictionary, the function should 4 parameters (accumulator, value, key, dict)
" {param} l        Should be the list or dictionary
" {param} init     The initial value of accumulator
"
"""
function! Reduced(fn, l, init)
  let new_list = deepcopy(a:l)
  let accumulator = a:init
  if type(new_list) ==# v:t_list
    for value in new_list
      let accumulator = a:fn(accumulator, value, new_list)
    endfor

  elseif type(new_list) ==# v:t_dict
    for [key, value] in items(new_list)
      let accumulator = a:fn(accumulator, value, key, new_list)
    endfor

  endif
  return accumulator
endfunction


