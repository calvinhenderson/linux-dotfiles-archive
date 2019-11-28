silent function! s:toggle()
  if ( (&number + &relativenumber) == 0 )
    let &fdc=&numberwidth
  else
    let &fdc=0
  endif
endfunction

silent function! g:gutter#init()
  call s:toggle()
endfunction

silent function! g:gutter#toggle_line_numbers()
  set number!
  call s:toggle()
endfunction

silent function! g:gutter#toggle_relative_numbers()
  set relativenumber!
  call s:toggle()
endfunction
