let mapleader = " "
"2nd leader , 
nmap <leader>o :setlocal spell! spelllang=en_us<CR>
nmap <leader>g :Goyo<CR>:set cursorline<CR>:hi CursorLine term=bold cterm=bold<CR>
nmap <leader>f za
nmap <leader>F zR
nmap tt :tabnew ~/null<CR>:cd ~<CR><leader>e
nmap <leader>d <C-h>:tabn<CR><leader>
nmap <leader>a <C-h>:tabp<CR> 
nmap <leader>D <C-h>:tabmove +1<CR>
nmap <leader>A <C-h>:tabmove -1<CR> 
nmap <leader><C-h> <C-w>H
nmap <leader><C-l> <C-w>L
nmap <leader><C-j> <C-w>J
nmap <leader><C-k> <C-w>K
nmap <leader>lh :cd ~<CR>:vsp<CR><leader>e
nmap <leader>jh :ch ~<CR>:sp<CR><leader>e
nmap <leader>ll <CR>:vsp<CR><leader>e
nmap <leader>jj <CR>:sp<CR><leader>e
nmap <leader><leader>l :vsp<CR>:term<CR>i
nmap <leader><leader>j :sp<CR>:term<CR>i
nmap <leader>lr :vsp<CR>:Ranger<CR>
nmap <leader>jr :sp<CR>:Ranger<CR>
nmap <leader>$ :BLines<CR>
nmap <leader>e :Files<CR>
nmap <leader>p :w<CR>:Sopen<CR>push.py -m ""<Left>
nmap <leader><leader>p :w<CR>:Sopen<CR>push.py<CR>
nmap <leader>r :checktime<CR>
nmap <leader>n nzz
nmap <leader>N Nzz
nmap <leader>ss :wa<CR>:mksession! ~/s.vim<CR><CR>:qa<CR>
nmap <leader>sp :wa<CR>:mksession! ~/p.vim<CR><CR>:qa<CR>
nmap <leader>le <leader><leader>ltrans -t en -s de "<C-y>""pi"<CR><C-h>
nmap <leader>ld <leader><leader>ltrans -t de -s en "<C-y>""pi"<CR><C-h>
nmap <leader>je <leader><leader>jtrans -t en -s de "<C-y>""pi"<CR><C-k>
nmap <leader>jd <leader><leader>jtrans -t de -s en "<C-y>""pi"<CR><C-k>
nmap <leader>ls <leader><leader>lvimlinks.py <C-y>""pi<CR>
nmap <leader>js <leader><leader>jvimlinks.py <C-y>""pi<CR>
vmap <leader>ls y<leader><leader>lvimlinks.py <C-y>""pi<CR>
vmap <leader>js y<leader><leader>jvimlinks.py <C-y>""pi<CR>
nmap <leader>lc <leader><leader>lvimcheatsheet.py <C-y>""pi<CR>
nmap <leader>jc <leader><leader>jvimcheatsheet.py <C-y>""pi<CR>
vmap <leader>lc y<leader><leader>lvimcheatsheet.py <C-y>""pi<CR>
vmap <leader>jc y<leader><leader>jvimcheatsheet.py <C-y>""pi<CR>
nmap <C-g> :tabnew /tmp/tmp.py<CR><leader>g-j<C-x><C-k><esc>Go 
nmap <leader>y :Sopen<CR><UP><CR>
autocmd FileType python nmap <buffer> <leader>cl Inut.listing(<Esc>A)<Esc><C-y>
autocmd FileType python nmap <buffer> <leader>cr Inut.ranger(<Esc>A)<Esc><C-y>
autocmd FileType python nmap <buffer> <leader>cg A)<Esc>Inut.grep("",<left><left>
autocmd FileType python nmap <buffer> <leader>cvl Inut.listing(<Esc>A)<Esc>
autocmd FileType python nmap <buffer> <leader>cvr Inut.ranger(<Esc>A)<Esc>
autocmd FileType python nmap <buffer> <leader>cc c<C-l>from os import system as s;s("clear")<CR><C-h>
autocmd FileType python nmap <buffer> <leader><leader>g <leader>g-j<C-x><C-k><esc>zz
autocmd FileType python nmap <buffer> <leader>lg <C-x><C-y>:sp /tmp/tmp.py<CR><C-j>--<C-k><C-j>--<C-h><C-l>
  autocmd FileType rust nmap <buffer> <leader>gd <Plug>(rust-doc)
  autocmd FileType rust nmap <buffer> <leader>gD <Plug>(rust-doc-tab)
