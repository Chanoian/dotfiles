return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "golangci_lint_ls",
                    "bashls",
                    "pylsp",
                    "yamlls",
                    "ansiblels",
                    "gopls",
                    "dockerls",
                    "jsonls",
                    "terraformls",
                    "tflint",
                },
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        event = "BufReadPre",
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup()

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- NEW Neovim 0.11+ API
            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
            })

            vim.lsp.config("pylsp", {
                capabilities = capabilities,
            })

            vim.lsp.config("jsonls", {
                capabilities = capabilities,
            })

            vim.lsp.config("yamlls", {
                capabilities = capabilities,
            })

            vim.lsp.config("ansiblels", {
                capabilities = capabilities,
            })

            vim.lsp.config("gopls", {
                capabilities = capabilities,
                settings = {
                    gopls = {
                        completeUnimported = true,
                        usePlaceholders = true,
                        analyses = {
                            unusedparams = true,
                        },
                    },
                },
            })

            vim.lsp.config("dockerls", {
                capabilities = capabilities,
            })
        end,
    }
}
