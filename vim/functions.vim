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
