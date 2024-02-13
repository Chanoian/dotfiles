vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "

-- Set Tabby as the default terminal program
vim.keymap.set('n', '<S-t>', ':ToggleTerm direction=float close_on_exit=true, hide_numbers=true, float_opts={border="curved"}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeOpen<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':NvimTreeClose<CR>', { noremap = true, silent = true })
vim.g.toggleterm_terminal = 'tabby'
