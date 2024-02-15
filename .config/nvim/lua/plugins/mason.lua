return {
  {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pylsp", "jsonls", "hydra_lsp" } })
    end
  },
  {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig')
    lspconfig.lua_ls.setup({})
    lspconfig.pylsp.setup({})
    lspconfig.jsonls.setup({})
    lspconfig.hydra_lsp.setup({})
  end
  }
}
