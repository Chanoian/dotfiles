vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Auto-refresh files when changed externally
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
    command = "if mode() != 'c' | checktime | endif",
})
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
    ':ToggleTerm direction=horizontal close_on_exit=true, hide_numbers=true, float_opts={border="curved"}<CR>',
    { noremap = true, silent = true }
)
-- Shift+Down: open/focus terminal #1 at bottom
vim.keymap.set("n", "<S-Down>", function()
  vim.cmd("1ToggleTerm direction=horizontal")
end, { desc = "Jump Down to ToggleTerm" })

-- Shift+Up: go up to editor (from terminal insert mode)
vim.keymap.set("t", "<S-Up>", [[<C-\><C-n><C-w>k]],
  { desc = "Jump Up to Editor", silent = true })

-- Shift+Up: go up to editor (from terminal normal mode)
vim.keymap.set("n", "<S-Up>", "<C-w>k",
  { desc = "Jump Up to Editor", silent = true })

-- Shift+Down: go down into terminal (from editor)
vim.keymap.set("n", "<S-Down>", "<C-w>j",
  { desc = "Jump Down to Terminal", silent = true })



-- NvimTree
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeOpen<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", ":NvimTreeClose<CR>", { noremap = true, silent = true })
--vim.api.nvim_set_keymap("n")

-- Bufferline
vim.opt.termguicolors = true
vim.api.nvim_set_keymap("n", "<leader>bb", ":BufferLinePick<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bc", ":BufferLinePickClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ba", ":BufferLineCloseOthers<CR>", { noremap = true, silent = true })

-- Inline virtual text + nice float
vim.diagnostic.config({
  virtual_text = { spacing = 2, prefix = "●" },
  float = { border = "rounded" },
})

-- Show float on hover (no keypress)
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  callback = function() vim.diagnostic.open_float(nil, { focus = false }) end,
})

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
