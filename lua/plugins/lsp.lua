return {
  -- Core LSP support
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- Initialize the language server
      local lspconfig = require("lspconfig")
      
      -- Configure pyright
      lspconfig.pyright.setup({})
      
      -- Essential keymaps
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Show documentation" })
      vim.keymap.set('n', '<C-c>a', vim.lsp.buf.code_action, { desc = "LSP actions" })
      vim.keymap.set('n', '<C-c>r', vim.lsp.buf.rename, { desc = "Rename symbol" })
      vim.keymap.set('n', '<C-c>k', vim.lsp.buf.signature_help, { desc = "Signature help" })
      vim.keymap.set('n', '<C-c>e', vim.diagnostic.open_float, { desc = "Open diagnostic float" })

    end,
  },
}
