vim.cmd[[ hi HopNextKey cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff ]]
require('hop').setup({
  case_insensitive = true,
})

vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char2()<cr>", {noremap = true})
