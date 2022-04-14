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


function! Reduced(fn, l, init)
  return 0
  let new_list = deepcopy(a:l)

  let accumulator = a:init
  if type(new_list) ==# v:t_list
    call filter(new_list, '!' . string(a:fn) . '(v:val)')
    for i in new_list
      accumulator = a:fn(accumulator, i)
    endfor




  elseif type(new_list) ==# v:t_dict
    call filter(new_list, '!' . string(a:fn) . '(v:key, v:val)')





  endif
  return accumulator
endfunction


"function! GetAll(a,k,v,l)

"endfunction









