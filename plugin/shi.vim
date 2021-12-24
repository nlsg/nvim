"simple helper script, for better shell integration (shi)

function! ShellMapLeft()
  command! SgotoTerm normal! <C-w>h
  command! SleaveTerm normal! <C-w>l
endfunction

function! ShellMapUp()
  command! SgotoTerm normal! <C-w>k
  command! SleaveTerm normal! <C-w>j
endfunction

function! ShellMapRight()
  command! SgotoTerm normal! <C-w>l
  command! SleaveTerm normal! <C-w>h
  command! SopenPython normal! :w<CR>:vsp<CR>:terminal python3 -i % <CR>i
  command! Sopen normal! :w<CR>:vsp<CR>:terminal <CR>i
endfunction

function! ShellMapDown()
  command! SgotoTerm normal! <C-w>j
  command! SleaveTerm normal! <C-w>k
  command! SopenPython normal! :w<CR>:sp<CR>:terminal python3 -i % <CR>i
  command! Sopen normal! :w<CR>:sp<CR>:terminal <CR>i
endfunction

command! Sh call ShellMapLeft()
command! Sl call ShellMapRight()
command! Sj call ShellMapDown()
command! Sk call ShellMapUp()

call ShellMapRight()


