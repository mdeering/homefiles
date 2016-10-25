function! Incr()
  let a = line('.') - line("'<")
  let c = virtcol("'<")
  if a > 0
    execute 'normal! '.c.'|'.a."\<C-a>"
  endif
  normal `<
endfunction

function! NumberToggle()
  if(&number == 1)
    set relativenumber
  else
    set number
  endif
endfunc

function! PasteToggle()
  if(&paste == 1)
    set nopaste
  else
    set paste
  endif
endfunc
