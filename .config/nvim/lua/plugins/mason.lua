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
            -- NEW API (Neovim 0.11+)

            local lsp = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            lsp.lua_ls.setup({ capabilities = capabilities })
            lsp.pylsp.setup({ capabilities = capabilities })
            lsp.jsonls.setup({ capabilities = capabilities })
            lsp.yamlls.setup({ capabilities = capabilities })
            lsp.ansiblels.setup({ capabilities = capabilities })

            lsp.gopls.setup({
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

            lsp.dockerls.setup({ capabilities = capabilities })

            lsp.terraformls.setup({
                capabilities = capabilities,
                filetypes = { "terraform", "hcl", "tf", "terraform-vars" },
            })

            lsp.tflint.setup({ capabilities = capabilities })
        end,
    },
}
