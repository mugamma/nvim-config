-- ~/.config/nvim/lua/plugins/quarto.lua
return {
  -- Quarto support
  {
    'quarto-dev/quarto-nvim',
    dependencies = {
      'jmbuhr/otter.nvim',
      'neovim/nvim-lspconfig',  -- Make this a direct dependency to ensure it's loaded first
    },
    ft = { 'quarto', 'markdown' },
    opts = {
      lspFeatures = {
        enabled = true,
        languages = { "r", "python", "julia" },
        diagnostics = {
          enabled = true,
          triggers = { "BufWrite" }
        },
        completion = {
          enabled = true
        }
      }
    },
    config = function(_, opts)
      local ok, quarto = pcall(require, 'quarto')
      
      quarto.setup(opts)
      
      -- Setup Otter with error handling
      pcall(function()
        require('otter').setup({
          lsp = {
            hover = {
              enabled = true
            },
            diagnostics = {
              enabled = true
            }
          }
        })
      end)
    end,
  },
}
