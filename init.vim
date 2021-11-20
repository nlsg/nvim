"TODO
"set encoding correct that umlaute can be used for mappings
"custom command syntax

let mapleader = ","

set cursorline
hi CursorLine term=bold cterm=bold

set number
set relativenumber

set clipboard=unnamedplus
set splitbelow
set splitright

syntax enable

call plug#begin()
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
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "B"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

let g:airline_theme='owo'

"move to/ markers
"map m set marker
nmap M `

"spellcheck
map <leader>o :setlocal spell! spelllang=en_us<CR>

"fold
set foldmethod=indent
nnoremap <space> za
vnoremap <S-Space> zA

"buffer navigation
nmap tt :tabnew 
nmap <C-k> :tabn<CR>
nmap <C-j> :tabp<CR> 
imap <C-k> <Esc>:tabn<CR>
imap <C-j> <Esc>:tabp<CR>
tmap <C-k> <C-\><C-n>:tabn<CR>
tmap <C-j> <C-\><C-n>:tabp<CR>

"window navigation 
nmap <leader><c-l> :vsp<CR>
nmap <C-h> <C-w>h
nmap <C-l> <C-w>li
imap <C-h> <Esc><C-w>h
imap <C-l> <Esc><C-w>li
nmap <C-S-h> <C-w>H
nmap <C-S-l> <C-w>Li
imap <C-S-h> <Esc><C-w>H
imap <C-S-l> <Esc><C-w>Li
tmap <C-h> <C-\><C-n><C-w>h
nmap d<C-h> <C-w>h:q<CR>
nmap d<C-l> <C-w>l:q<CR>i
nmap t<C-l> :vsp<CR>:term<CR>i
nmap ö <C-w>l

"navigation inside buffer
nmap <S-k> {
nmap <S-j> }
nmap <S-l> {zz
nmap <S-h> }zz
vmap <S-k> {
vmap <S-j> }
vmap <S-l> {zz
vmap <S-h> }zz

"fzf-vim
nmap ,l :BLines<CR>
nmap ,e :Files<CR>
nmap ,g :GFiles<CR>

nmap ,t :FloatermToggle<CR>

"terminal
nmap <C-t> :tabnew<CR>:term<Enter>i

tmap <C-y> <C-\><C-n>
tmap <C-x> <C-\><C-n>:q<CR>

"misc
nmap <C-s> :w<CR>:!rm ~/s.vim<CR>:mksession ~/s.vim<CR><CR>
nmap <C-q> :q<CR>
nmap <C-f> /
imap <C-s> <Esc>:w<CR>:!rm ~/s.vim<CR>:mksession ~/s.vim<CR><CR>
imap <C-f> <Esc>/

nmap P o<Esc>p

"find and replace
nmap % :%s/\<<C-r><C-w>\>//g<Left><Left>
nmap & :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

"allways change dir to current buffer/window dir
autocmd BufEnter * silent! lcd %:p:h

"python specific
autocmd FileType python map <buffer> <C-x> :w<CR>:vsp<CR>:terminal python3 -i % <CR>i
autocmd FileType python map <buffer> <C-y> yy<C-l><C-y>pi<Enter><C-h>
autocmd FileType python imap <buffer> <C-x> <esc>:w<CR>:vsp<CR>:terminal python2 -i % <CR>i
autocmd FileType python let @s = 'iself.'
autocmd FileType help wincmd L
