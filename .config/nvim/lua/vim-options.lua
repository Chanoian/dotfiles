vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Map Ctrl+C to yank in normal mode
vim.keymap.set("v", "<C-c>", '"*y')
vim.keymap.set("v", "<C-v>", '"*p')
vim.cmd("set cursorline")

vim.cmd("set title")
vim.cmd("set ruler")
vim.cmd("set number")
vim.cmd("set filetype=on")
vim.opt.swapfile = false
vim.g.mapleader = " "


-- Delete all the file content
vim.api.nvim_set_keymap("n", "<leader>da", "ggVGd", { noremap = true })

-- Copy all the file content
vim.api.nvim_set_keymap("n", "<leader>ya", 'ggVG"+y', { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>ya", '"+y', { noremap = true })

-- ToggleTerm
vim.keymap.set(
	"n",
	"<S-t>",
	':ToggleTerm direction=float close_on_exit=true, hide_numbers=true, float_opts={border="curved"}<CR>',
	{ noremap = true, silent = true }
)

-- NvimTree
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeOpen<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", ":NvimTreeClose<CR>", { noremap = true, silent = true })
--vim.api.nvim_set_keymap("n")

-- Bufferline
vim.opt.termguicolors = true
vim.api.nvim_set_keymap("n", "<leader>bb", ":BufferLinePick<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bc", ":BufferLinePickClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ba", ":BufferLineCloseAll<CR>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd({ "VimResized" }, {
	desc = "Resize nvim-tree if nvim window got resized",

	group = vim.api.nvim_create_augroup("NvimTreeResize", { clear = true }),
	callback = function()
		local percentage = 15

		local ratio = percentage / 100
		local width = math.floor(vim.go.columns * ratio)
		vim.cmd("tabdo NvimTreeResize " .. width)
	end,
})
