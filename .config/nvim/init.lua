vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {'Exafunction/codeium.vim', event = 'BufEnter'},
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
    }
  }
}


require("lazy").setup(plugins, opts)
require("catppuccin").setup()

local builtin = require('telescope.builtin')
local config = require('nvim-treesitter.configs')

vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', ':Neotree filesystem reveal left <CR>', {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

config.setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "python", "javascript", "html" },
  highlight = { enable = true },
  indent = { enable = true },  
})


vim.cmd("colorscheme catppuccin")


