if exists(':AsyncRun')
  nnoremap <buffer><silent> <F9> :<C-U>AsyncRun python -u "%"<CR>
endif

" Do not wrap Python source code.
set nowrap
set sidescroll=5
set sidescrolloff=2
set colorcolumn=100

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent

" For delimitMate
let b:delimitMate_matchpairs = "(:),[:],{:}"
