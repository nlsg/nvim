"TODO
"set encoding correct that umlaute can be used for mappings
"custom command syntax

syntax enable
"plugins
"=======

call plug#begin()
Plug 'https://github.com/junegunn/goyo.vim'
Plug 'https://github.com/voldikss/vim-floaterm'
Plug 'https://github.com/davidhalter/jedi-vim'
Plug 'https://github.com/tmhedberg/SimpylFold'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/junegunn/fzf.vim' " fzf ,f ,e ,g ...
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/tpope/vim-surround' " new surround(ys ..), ds.. ,cs.. 
call plug#end()

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = "<leader>D"
let g:jedi#documentation_command = "B"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<leader><Space>"
let g:jedi#rename_command = "<leader>r"

let g:airline_theme='owo'

"settings
"========
let mapleader = ","
"2nd leader - 

set cursorline
hi CursorLine term=bold cterm=bold

set number
set relativenumber

set clipboard=unnamedplus
set splitbelow
set splitright

"mappings
"========
"move to marker
nmap M `
"german keyboard layout optimisation
nmap ö "
imap ö "
vmap ö "
tmap ö "
cmap ö "
nmap ä @
imap ä @
vmap ä @
tmap ä @
cmap ä @

"spellcheck
nmap <leader>o :setlocal spell! spelllang=en_us<CR>

"goyo - center text
nmap <leader>c :Goyo<CR>:set cursorline<CR>:hi CursorLine term=bold cterm=bold<CR>
nmap -g <leader>c

"folds
set foldmethod=indent
nmap -f za
nmap -F zR

"terminal
nmap <C-t> :tabnew<CR>:term<Enter>i

tmap <C-y> <C-\><C-n>
tmap <C-x> <C-y>:q<CR>

"buffer navigation
nmap tt :tabnew ~/null<CR>,e
nmap -<C-k> :tabn<CR>
nmap -<C-j> :tabp<CR> 

"window navigation 
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
imap <C-h> <Esc><C-w>hi
imap <C-l> <Esc><C-w>li
imap <C-j> <Esc><C-w>ji
imap <C-k> <Esc><C-w>kLi
tmap <C-h> <C-y><C-w>hi
tmap <C-l> <C-y><C-w>li
tmap <C-j> <C-y><C-w>ji
tmap <C-k> <C-y><C-w>ki

nmap d<C-h> <C-w>h:q<CR>
nmap d<C-l> <C-w>l:q<CR>
nmap d<C-j> <C-w>j:q<CR>
nmap d<C-k> <C-w>k:q<CR>
nmap c<C-h> <C-w>hi
nmap c<C-l> <C-w>li
nmap c<C-j> <C-w>ji
nmap c<C-k> <C-w>ki
nmap --<C-h> <C-w>H
nmap --<C-l> <C-w>L
nmap --<C-j> <C-w>J
nmap --<C-k> <C-w>K

nmap -l :cd ~<CR>:vsp<CR>,e
nmap -j :ch ~<CR>:sp<CR>,e
nmap --l :vsp<CR>:term<CR>i
nmap --j :sp<CR>:term<CR>i

"registers to resize splits
let @h = "<"
let @l = ">"
let @j = "+"
let @k = "-"

"navigation inside buffer
nmap <S-k> {
nmap <S-j> }
nmap <S-l> {zz
nmap <S-h> }zz
vmap <S-k> (
vmap <S-j> )
vmap <S-l> (zz
vmap <S-h> )zz

"visual
vmap / y<Esc>/<C-r>0<CR>

"fzf-vim
nmap ,l :BLines<CR>
nmap ,e :Files<CR>
nmap ,g :GFiles<CR>

nmap ,t :FloatermToggle<CR>

"push.py
nmap <leader>p --lpush.py -m ""<Left>
nmap <leader><leader>p --lpush.py<CR><C-d>

"misc
nmap <leader>s :w<CR>:source<CR>
nmap <C-s> :w<CR>:!rm ~/s.vim<CR>:mksession ~/s.vim<CR><CR>
imap <C-s> <Esc>:w<CR>:!rm ~/s.vim<CR>:mksession ~/s.vim<CR><CR>
nmap <C-q> :q<CR>
nmap <C-f> /
nmap P o<Esc>p
nmap -n nzz
nmap -N Nzz
nmap -s :wa<CR>:!rm ~/s.vim<CR>:mksession ~/s.vim<CR><CR>:qa<CR>
imap <C-f> <Esc>/
imap <C-x> <Esc>:wq<CR>

nmap -le --ltrans -t en -s de <C-y>"0pi<CR><C-h>
nmap -ld --ltrans -t de -s en <C-y>"0pi<CR><C-h>
nmap -je --jtrans -t en -s de <C-y>"0pi<CR><C-k>
nmap -jd --jtrans -t de -s en <C-y>"0pi<CR><C-k>

"find and replace
nmap % :%s/\<<C-r><C-w>\>//g<Left><Left>
nmap & :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

"registers and macros
"<C-r>q (in insert mode) to paste the macro stored in q
" "q to accesss register ie "qya

"autocmds
"========
autocmd BufEnter * silent! lcd %:p:h  "allways change dir to current buffer/window dir
autocmd FileType python nmap <buffer> <C-f> :tabnew /tmp/tmp.py<CR>-g-j<C-x><C-k>
autocmd FileType python nmap <buffer> <C-x> :w<CR>:vsp<CR>:terminal python3 -i % <CR>i
autocmd FileType python imap <buffer> <C-x> <esc>:w<CR>:vsp<CR>:terminal python3 -i % <CR>i
autocmd FileType python nmap <buffer> <C-y> mm_y$zb<C-j>pi<CR><C-k><esc>Mm
autocmd FileType python nmap <buffer> <C-c> y$zb<C-j>pi<CR><C-k><esc>j
autocmd FileType python imap <buffer> <C-y> <Esc>_y$zb<C-j><C-y>pi<CR><C-k><esc>o
autocmd FileType python imap <buffer> <C-c> <Esc>y$zb<C-j><C-y>pi<CR><C-k><esc>o

autocmd FileType python nmap <buffer> -j<C-x> :w<CR>:sp<CR>:terminal python3 -i % <CR>i
autocmd FileType python nmap <buffer> -j<C-y> mm_y$<C-j>pi<Enter><C-k><esc>Mm
autocmd FileType python nmap <buffer> -j<C-c> y$<C-j>pi<Enter><C-k><esc>j
autocmd FileType python nmap <buffer> -k<C-y> mm_y$<C-k>pi<Enter><C-j><esc>Mm
autocmd FileType python nmap <buffer> -k<C-c> y$<C-k>pi<Enter><C-j><esc>j
autocmd FileType python nmap <buffer> -l<C-y> mm_y$<C-l><C-j>pi<Enter><C-h><esc>Mm
autocmd FileType python nmap <buffer> -l<C-c> y$<C-l><C-j>pi<Enter><C-h><esc>j

autocmd FileType help wincmd L
