"HINTS
"registers and macros
"<C-r>q (in insert mode) to paste the macro stored in q
" "q to accesss register ie "qyaw | "wy$ | "wp 

"plugins
"=======                 
call plug#begin()
" Plug 'https://github.com/tpope/vim-repeat'
" Plug 'https://github.com/jiangmiao/auto-pairs'

Plug 'hylang/vim-hy'
Plug 'Olical/conjure'
Plug 'neoclide/coc.nvim' , {'branch': 'release'}

Plug 'https://github.com/tommcdo/vim-exchange'
Plug 'https://github.com/Asheq/close-buffers.vim'
Plug 'https://github.com/arcticicestudio/nord-vim'
"Plug 'nvim-lua/plenary.nvim'
Plug 'https://github.com/vim-scripts/DrawIt'
Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
" Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'https://github.com/dhruvasagar/vim-table-mode'
Plug 'francoiscabrol/ranger.vim'
" Plug 'rbrouleff/bclose.vim'
Plug 'https://github.com/junegunn/goyo.vim'

Plug 'https://github.com/davidhalter/jedi-vim'
" Plug 'Valloric/YouCompleteMe'

Plug 'https://github.com/tmhedberg/SimpylFold'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/tpope/vim-surround' " new surround(ys ..), ds.. ,cs.. 
Plug 'https://github.com/junegunn/fzf.vim' " fzf ,f ,e ,g ...
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
call plug#end()

"plugin config
"=============
"rust
filetype plugin indent on
let g:ale_linters = {'rust': ['analyzer'],}
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }
let g:ale_completion_enabled = 1

let g:ranger_map_keys = 0

let g:airline_theme='owo'

let g:goyo_width = 120

"tools / cli
"=====
"format a json file
command! FormatJson normal! :%!python -m json.tool<CR>

"colorscheme
"======
colorscheme nord
hi Normal guibg=NONE ctermbg=NONE

"settings
"========
"general
syntax enable

" Optional, configure as-you-type completions
set completeopt=menu,menuone,preview,noselect,noinsert

let mapleader = " "
let maplocalleader = " "
nmap <C-Space> <leader>

set mouse=n
set cursorline
hi CursorLine term=bold cterm=bold

set number
set relativenumber

set clipboard=unnamedplus
set splitbelow
set splitright

"german keyboard layout optimisation
nmap ?? "
imap ?? "
vmap ?? "
tmap ?? "
cmap ?? "
nmap ?? @
imap ?? @
vmap ?? @
tmap ?? @
cmap ?? @

"mappings
"========

"misc
nmap C ct_
nmap c- ct-
nmap c, ct,
nmap D dt_
nmap d, dt,
nmap U <C-r>
nmap ,s :w<CR>:source<CR>
nmap <C-s> :w<CR>:!rm ~/s.vim<CR>:mksession ~/s.vim<CR><CR>
imap <C-s> <Esc>:w<CR>:!rm ~/s.vim<CR>:mksession ~/s.vim<CR><CR>
nmap P o<Esc>p
nmap <leader>q :q!<CR>
nmap <leader>w :w<CR>
nmap <leader>r :checktime<CR>
nmap <leader>n nzz
nmap <leader>N Nzz
nmap <leader>ss :wa<CR>:mksession! session.vim<CR><CR>:xa<CR>
nmap <leader>sp :wa<CR>:mksession! ~/p.vim<CR><CR>:qa<CR>
"move to marker
nmap M `
"find and replace
nmap & :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
"spellcheck
nmap <leader>o :setlocal spell! spelllang=en_us<CR>

"folds
set foldmethod=indent
nmap <Tab> za
nmap <leader>F zR
nmap <leader><Tab> mmggVGzCMm

"fzf-vim
nmap <leader>$ :BLines<CR>
nmap ,g :GFiles<CR>

"Shi.vim
"=======
nmap <C-x> :Sopen<CR>
nmap <leader>x o./<C-r>%<Esc>"ddd:Sopen<CR>watch -n .5 <C-\><C-n>"dpi<CR><C-\><C-n>:SleaveTerm<CR>

vmap ^ <C-c>
nmap ^ <C-c>
nmap ?? <C-y>
tmap ?? <C-\><C-n>:bd!<CR>
nmap ! <C-x>
imap ?? <C-y>

nmap <C-y>    mm_"sy$:SgotoTerm<CR>"spi<CR><C-\><C-n>:SleaveTerm<CR><Esc>Mm
nmap <C-c>       "sy$:SgotoTerm<CR>"spi<CR><C-\><C-n>:SleaveTerm<CR><Esc>j
imap <C-y> <Esc>_"sy$:SgotoTerm<CR>"spi<CR><C-\><C-n>:SleaveTerm<CR><Esc>o
vmap <C-c>       "sy$:SgotoTerm<CR>"spi<CR><C-\><C-n>:SleaveTerm<CR><Esc>j

"terminal
"========
tmap <C-y> <C-\><C-n>
tmap <C-x> <C-y>:bd!<CR>

"visual
"======
vmap / y<Esc>/<C-r>0<CR>
vmap & y<Esc>:%s/<C-r>0//gc<left><left><left>

"move lines
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"navigation inside buffer
nmap <S-k> {
nmap <S-j> }
vmap <S-k> (
vmap <S-j> )

"pane navigation 
"===============
command! Smoveh normal <C-w>h
command! Smovej normal <C-w>j
command! Smovek normal <C-w>k
command! Smovel normal <C-w>l
command! Sc normal :bd!<CR>

nmap <C-h> <Esc><C-w>h
nmap <C-j> <Esc><C-w>j
nmap <C-k> <Esc><C-w>k
nmap <C-l> <Esc><C-w>l
imap <C-h> <Esc><C-w>hi
imap <C-l> <Esc><C-w>li
imap <C-j> <Esc><C-w>ji
imap <C-k> <Esc><C-w>ki
tmap <C-h> <C-\><C-n><C-w>h
tmap <C-l> <C-\><C-n><C-w>l
tmap <C-j> <C-\><C-n><C-w>j
tmap <C-k> <C-\><C-n><C-w>k

"registers to resize panes
let @h = "<"
let @l = ">"
let @j = "+"
let @k = "-"

nmap <leader>g :Goyo <CR>:set cursorline<CR>:hi CursorLine term=bold cterm=bold<CR>:set number<CR>:set relativenumber<CR><Esc>
nmap <leader>= <C-w>=
nmap <leader>_ <C-w>_

nmap d<C-h> <C-w>hi<C-\><C-n>:Sc<CR>
nmap d<C-l> <C-w>li<C-\><C-n>:Sc<CR>
nmap d<C-j> <C-w>ji<C-\><C-n>:Sc<CR>
nmap d<C-k> <C-w>ki<C-\><C-n>:Sc<CR>
nmap <C-d><C-h> d<C-h>
nmap <C-d><C-l> d<C-l>
nmap <C-d><C-j> d<C-j>
nmap <C-d><C-k> d<C-k>

nmap g<C-h> <C-w>h<leader>g<Esc>
nmap g<C-l> <C-w>l<leader>g<Esc>
nmap g<C-j> <C-w>j<leader>g<Esc>
nmap g<C-k> <C-w>k<leader>g<Esc>

nmap c<C-h> <C-w>hi
nmap c<C-l> <C-w>li
nmap c<C-j> <C-w>ji
nmap c<C-k> <C-w>ki

nmap <leader><C-h> <C-w>H
nmap <leader><C-l> <C-w>L
nmap <leader><C-j> <C-w>J
nmap <leader><C-k> <C-w>K

"pane prog openers
"============

"open new buffer
nmap <leader>ll :vsp <CR>:e 
nmap <leader>jj :sp <CR>:e 
nmap <leader>kk :sp <CR><C-w>k:e 
nmap <leader>hh :vsp <CR><C-w>h:e 
nmap <leader>lr :vsp<CR>:Ranger<CR>
nmap <leader>jr :sp<CR>:Ranger<CR>

"open term
nmap <leader><leader>l :Sl<CR>:Sopen<CR>
nmap <leader><leader>j :Sj<CR>:Sopen<CR>

"open tmp
nmap <leader>H :vsp<CR><C-w>h:e ~/tmp.sh<CR>:call ShellMapLeft()<CR>
nmap <leader>J        :sp<CR>:e ~/tmp.sh<CR>:call ShellMapRight()<CR>
nmap <leader>K  :sp<CR><C-w>k:e ~/tmp.sh<CR>:call ShellMapUp()()<CR>
nmap <leader>L       :vsp<CR>:e ~/tmp.sh<CR>:call ShellMapDown()<CR>

"translation [e]nglish [d]eutsch
nmap <leader>jd dd<leader><leader>jtrans -t de -s en "<C-y>""pi"<CR><C-k>
nmap <leader>ld dd<leader><leader>ltrans -t de -s en "<C-y>""pi"<CR><C-h>
nmap <leader>je dd<leader><leader>jtrans -t en -s de "<C-y>""pi"<CR><C-k>
nmap <leader>le dd<leader><leader>ltrans -t en -s de "<C-y>""pi"<CR><C-h>
vmap <leader>jd y<leader><leader>jtrans -t de -s en "<C-y>""pi"<CR><C-k>
vmap <leader>ld y<leader><leader>ltrans -t de -s en "<C-y>""pi"<CR><C-h>
vmap <leader>je y<leader><leader>jtrans -t en -s de "<C-y>""pi"<CR><C-k>
vmap <leader>le y<leader><leader>ltrans -t en -s de "<C-y>""pi"<CR><C-h>

"links [s]earch
nmap <leader>js dd<leader><leader>jvimlinks.py <C-y>""pi<CR>
nmap <leader>ls dd<leader><leader>lvimlinks.py <C-y>""pi<CR>
vmap <leader>js y<leader><leader>jvimlinks.py <C-y>""pi<CR>
vmap <leader>ls y<leader><leader>lvimlinks.py <C-y>""pi<CR>

"cheat-sheet
nmap <leader>lc         I<C-r>=&filetype<CR> <Esc>dd<leader><leader>lcheatsheet.py <C-y>""pi<CR><C-\><C-n>gg
nmap <leader>jc         I<C-r>=&filetype<CR> <Esc>dd<leader><leader>jcheatsheet.py <C-y>""pi<CR><C-\><C-n>gg
vmap <leader>lc yo<Esc>pI<C-r>=&filetype<CR> <Esc>dd<leader><leader>lcheatsheet.py <C-y>""pi<CR><C-\><C-n>gg
vmap <leader>jc yo<Esc>pI<C-r>=&filetype<CR> <Esc>dd<leader><leader>jcheatsheet.py <C-y>""pi<CR><C-\><C-n>gg


"push.py
nmap <leader>p :w<CR>:Sopen<CR>push.py -m ""<Left>
nmap <leader><leader>p :w<CR>:Sopen<CR>push.py<CR>

"autocmds
"========
autocmd BufEnter * silent! lcd %:p:h  "allways change dir to current buffer/window dir

autocmd FileType hy nmap  <leader>c "sya(:SgotoTerm<CR>"spi<CR><C-\><C-n>:SleaveTerm<CR><Esc>j
autocmd FileType hy nmap  <leader>y :w<CR>ohy2py <C-r>%  \| cnav.py<Esc>ddk:Sopen<CR><C-\><C-n>pi<CR> 

" autocmd FileType python nmap <buffer> <leader>cl Inut.listing(<Esc>A)<Esc>
" autocmd FileType python nmap <buffer> <leader>cr Inut.ranger(<Esc>A)<Esc>
" autocmd FileType python nmap <buffer> <leader>cp Iprint(<Esc>A)<Esc><C-y>
" autocmd FileType python nmap <buffer> <leader>ch Ihelp(<Esc>A)<Esc><C-y>
" autocmd FileType python nmap <buffer> <leader>cg A)<Esc>Inut.grep("",<left><left>
" autocmd FileType python nmap <buffer> <leader>cc :SgotoTerm<CR>ifrom os import system as s;s("clear")<CR><C-\><C-n>:SleaveTerm<CR>

autocmd FileType python nmap <buffer> <leader><leader>g <leader>g-j<C-x><C-k><esc>zz
autocmd FileType python nmap <buffer> <C-x> :SopenPython<CR>
autocmd FileType python nmap <buffer> <leader>lg <C-x><C-y>:sp /tmp/tmp.py<CR><C-j>--<C-k><C-j>--<C-h><C-l>

autocmd FileType c nmap <buffer> <C-x> :Sopen<CR>echo hallo<CR>

autocmd TermEnter * set nonumber 
autocmd TermEnter * set norelativenumber 
autocmd TermLeave * set number 
autocmd TermLeave * set relativenumber 

autocmd FileType help wincmd L

autocmd FileType vim nmap <buffer> <C-a> :w<CR>:source<CR>

autocmd FileType sh nmap <buffer> <C-x> :w<CR>o<Esc>i<C-r>%<Esc>ddk:Sopen<CR>. <C-\><C-n>pi<CR> 

autocmd FileType hy nmap <buffer> <C-x> :w<CR>o<C-r>%<Esc>ddk:Sopen<CR>hy -i <C-\><C-n>pi<CR> 
autocmd FileType hy imap <buffer> ' '
'
autocmd FileType tex nmap <buffer> <C-x> :w<CR>:!pdflatex <C-r>%<CR><CR>
autocmd FileType tex nmap <buffer> <C-y> :!evince <C-r>%<DEL><DEL><DEL>pdf & <CR>

autocmd BufNewFile,BufRead *.rs set filetype=rust

augroup Racer
autocmd!
  autocmd FileType rust nmap <buffer> gd         <Plug>(rust-def)
  autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
  autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
  autocmd FileType rust nmap <buffer> gt         <Plug>(rust-def-tab)
  autocmd FileType rust nmap <buffer> <leader>gd <Plug>(rust-doc)
  autocmd FileType rust nmap <buffer> <leader>gD <Plug>(rust-doc-tab)
augroup END

