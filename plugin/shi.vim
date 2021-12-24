"simple helper script, for better shell integration (shi)

function! ShellUpdateCommands()
  let g:shi#command_core = g:shi#shell_direction . "pi\<CR\>" . g:shi#back_direction . "\<esc\>"
  let g:shi#npaste_line = "nmap \<C-y\> mm_y$" . g:shi#command_core . "Mm"
  let g:shi#npaste = "nmap \<C-c\> y$" . g:shi#command_core . "j"
  let g:shi#ipaste_line = "imap \<C-y\> \<Esc\>_y$" . g:shi#command_core . "o"
  let g:shi#ipaste = "imap \<C-c\> \<Esc\>y$" . g:shi#command_core . "o"
  let g:shi#vpaste = "vmap \<C-c\> y$" . g:shi#command_core . "j"
  execute g:shi#npaste_line
  execute g:shi#npaste 
  execute g:shi#ipaste_line
  execute g:shi#ipaste
  execute g:shi#vpaste

  command! Snpaste_line execute "normal! mm_y$" . g:shi#command_core . "Mm"
  command! Snpaste      execute "normal! y$" . g:shi#command_core . "j"
  command! Sipaste_line execute "normal! \<Esc\>_y$" . g:shi#command_core . "o"
  command! Sipaste      execute "normal! \<Esc\>y$" . g:shi#command_core . "o"
  command! Svpaste      execute "normal! y$" . g:shi#command_core . "j"
endfunction

function! ShellMapLeft()
  let g:shi#shell_direction = "\<C-h\>"
  let g:shi#back_direction  = "\<C-l\>"
endfunction
  call ShellUpdateCommands()

function! ShellMapUp()
  let g:shi#shell_direction = "\<C-k\>"
  let g:shi#back_direction  = "\<C-j\>"
  call ShellUpdateCommands()
endfunction

function! ShellMapRight()
  let g:shi#shell_direction = "\<C-l\>"
  let g:shi#back_direction  = "\<C-h\>"
  let g:shellDirection = ":vsp\<CR>"
  command! SopenPython normal! :w<CR>:vsp<CR>:terminal python3 -i % <CR>i
  command! Sopen normal! :w<CR>:vsp<CR>:terminal <CR>i
  call ShellUpdateCommands()
endfunction

function! ShellMapDown()
  let g:shi#shell_direction = "\<C-j\>"
  let g:shi#back_direction  = "\<C-k\>"
  let g:shellDirection = ":sp\<CR>"
  command! SopenPython normal! :w<CR>:sp<CR>:terminal python3 -i % <CR>i
  command! Sopen normal! :w<CR>:sp<CR>:terminal <CR>i
  call ShellUpdateCommands()
endfunction

command! Sh call ShellMapLeft()
command! Sl call ShellMapRight()
command! Sj call ShellMapDown()
command! Sk call ShellMapUp()

call ShellMapRight()


