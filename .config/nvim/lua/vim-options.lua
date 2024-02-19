vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.cmd("set mouse=a")
vim.cmd("set cursorline")
vim.cmd("set title")
vim.cmd("set ruler")
vim.cmd("set number")
vim.cmd("set filetype=on")
vim.g.mapleader = " "
-- Set Tabby as the default terminal program
vim.keymap.set('n', '<S-t>', ':ToggleTerm direction=float close_on_exit=true, hide_numbers=true, float_opts={border="curved"}<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeOpen<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':NvimTreeClose<CR>', { noremap = true, silent = true })
