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
require("vim-options")
require("lazy").setup("plugins")
--vim.cmd([[colorscheme catppuccin-mocha]])
--vim.cmd([[colorscheme gruvbox]])
--vim.cmd([[colorscheme tokyonight]])
--vim.cmd([[colorscheme catppuccin]])
--vim.cmd([[colorscheme nordic]])
--vim.cmd([[colorscheme kanagawa]])
--vim.cmd([[colorscheme everforest]])
--vim.cmd([[colorscheme kanagawa-wave]])
--vim.cmd([[colorscheme oceanicnext]])
--vim.cmd([[colorscheme kanagawa-lotus]])
vim.cmd([[colorscheme kanagawa-dragon]])
