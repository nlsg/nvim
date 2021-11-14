set number
set relativenumber

set clipboard=unnamedplus
syntax enable
set splitbelow
set splitright

call plug#begin()
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/davidhalter/jedi-vim'
Plug 'https://github.com/tmhedberg/SimpylFold'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/junegunn/fzf.vim' " fzf 
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
call plug#end()

set foldmethod=indent
nnoremap <space> za
vnoremap <S-Space> zA

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "B"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

let g:airline_theme='owo'

nnoremap tt :tabnew 
nnoremap <C-k> :tabn<CR>
nnoremap <C-j> :tabp<CR> 
inoremap <C-k> <Esc>:tabn<CR>
inoremap <C-j> <Esc>:tabp<CR>
vnoremap <C-k> <Esc>:tabn<CR>
vnoremap <C-j> <Esc>:tabp<CR>
tnoremap <C-k> <C-\><C-n>:tabn<CR>
tnoremap <C-j> <C-\><C-n>:tabp<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
inoremap <C-h> <Esc><C-w>h
inoremap <C-l> <Esc><C-w>l
vnoremap <C-h> <Esc><C-w>h
vnoremap <C-l> <Esc><C-w>l
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-l> <C-\><C-n><C-w>l

tmap <C-k> <C-\><C-n>:tabn<CR>
tmap <C-j> <C-\><C-n>:tabp<CR>

nnoremap <S-k> {
nnoremap <S-j> }
nnoremap <S-h> {zz
nnoremap <S-l> }zz

nmap ,l :BLines<CR>
nmap ,e :Files<CR>
nmap ,g :GFiles<CR>

nmap <C-t> :tabnew<CR>:term<Enter>i
tmap <C-y> <C-\><C-n>
"let mapleader = ","

nnoremap % :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap & :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

autocmd FileType python map <buffer> <C-x> :w<CR>:vsp<CR>:terminal python3 -i %
"<CR>i
autocmd FileType python imap <buffer> <C-x> <esc>:w<CR>:vsp<CR>:terminal python3 -i %
"<CR>i
