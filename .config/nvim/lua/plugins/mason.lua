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
          "tflint", -- 👈 optional but recommended
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.pylsp.setup({ capabilities = capabilities })
      lspconfig.jsonls.setup({ capabilities = capabilities })
      lspconfig.yamlls.setup({ capabilities = capabilities })
      lspconfig.ansiblels.setup({ capabilities = capabilities })
      lspconfig.gopls.setup({
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
      lspconfig.dockerls.setup({ capabilities = capabilities })
      lspconfig.terraformls.setup({
        capabilities = capabilities,
        filetypes = { "terraform", "hcl", "tf", "terraform-vars" },
      })
      lspconfig.tflint.setup({ capabilities = capabilities }) -- 👈 optional
    end,
  },
}
