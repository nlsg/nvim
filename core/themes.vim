let s:my_theme_dict = {}

function! s:my_theme_dict.gruvbox8() dict abort
  packadd! vim-gruvbox8

  " Italic options should be put before colorscheme setting,
  " see https://github.com/morhetz/gruvbox/wiki/Terminal-specific#1-italics-is-disabled
  let g:gruvbox_italics=1
  let g:gruvbox_italicize_strings=1
  let g:gruvbox_filetype_hi_groups = 1
  let g:gruvbox_plugin_hi_groups = 1
  colorscheme gruvbox8_hard
endfunction

function! s:my_theme_dict.onedark() dict abort
  packadd! onedark.nvim

  colorscheme onedark
endfunction

function! s:my_theme_dict.edge() dict abort
  packadd! edge

  let g:edge_enable_italic = 1
  let g:edge_better_performance = 1
  colorscheme edge
endfunction

function! s:my_theme_dict.sonokai() dict abort
  packadd! sonokai

  let g:sonokai_enable_italic = 1
  let g:sonokai_better_performance = 1
  colorscheme sonokai
endfunction

function! s:my_theme_dict.gruvbox_material() dict abort
  packadd! gruvbox-material

  let g:gruvbox_material_enable_italic = 1
  let g:gruvbox_material_better_performance = 1
  colorscheme gruvbox-material
endfunction

function! s:my_theme_dict.nord() dict abort
  packadd! nord.nvim

  colorscheme nord
endfunction

function! s:my_theme_dict.doom_one() dict abort
  packadd! doom-one.nvim
  colorscheme doom-one
endfunction

function! s:my_theme_dict.everforest() dict abort
  packadd! everforest

  let g:everforest_enable_italic = 1
  let g:everforest_better_performance = 1
  colorscheme everforest
endfunction

function! s:my_theme_dict.nightfox() dict abort
  packadd! nightfox.nvim

  colorscheme nordfox
endfunction

let s:candidate_theme = [
      \ 'gruvbox8',
      \ 'onedark',
      \ 'edge',
      \ 'sonokai',
      \ 'gruvbox_material',
      \ 'nord',
      \ 'doom_one',
      \ 'everforest',
      \ 'nightfox'
      \ ]

let s:theme = utils#RandElement(s:candidate_theme)
let s:colorscheme_func = printf('s:my_theme_dict.%s()', s:theme)

if has_key(s:my_theme_dict, s:theme)
  execute 'call ' . s:colorscheme_func
  if g:logging_level == 'debug'
    let s:msg1 = "Currently loaded theme: " . s:theme
    call v:lua.vim.notify(s:msg1, 'info', {'title': 'nvim-config'})
  endif
else
  let s:msg = "Invalid colorscheme function: " . s:colorscheme_func
  call v:lua.vim.notify(s:msg, 'error', {'title': 'nvim-config'})
endif
