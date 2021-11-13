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

tnoremap <C-k> :tabn<CR>
tnoremap <C-j> :tabp<CR>

nnoremap <S-k> {
nnoremap <S-j> }

nmap ,l :BLines<CR>
nmap ,e :Files<CR>
nmap ,g :GFiles<CR>

nmap <C-t> :tabnew<CR>:term<Enter>i
tmap <C-y> <C-\><C-n>
"let mapleader = ","

autocmd FileType python map <buffer> <C-x> :w<CR>:sp<CR>:terminal python3 -i %<CR>i
autocmd FileType python imap <buffer> <C-x> <esc>:w<CR>:sp<CR>:terminal python3 -i %<CR>i
