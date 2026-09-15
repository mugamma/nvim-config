return {
  -- github copilot
  {
    'github/copilot.vim',
    init = function()
      vim.g.copilot_npx_command = 0  -- use bundled language-server instead of npx
      vim.g.copilot_filetypes = {
        markdown = false,
        quarto = false,
        tex = false,
      }
    end,
  },
}
