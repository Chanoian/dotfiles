return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				ensure_installed = { "hcl", "bash", "dockerfile", "go", "gomod", "json", "lua", "python", "yaml" },
				highlight = { enable = true },
				indent = { enable = true },
				autopairs = { enable = true },
				context_commentstring = { enable = true },
			})
		end,
	},
}
