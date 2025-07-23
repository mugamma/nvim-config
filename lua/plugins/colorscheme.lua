return {
  -- Colorscheme
  {
    "danilo-augusto/vim-afterglow",
    priority = 1000, -- load colorscheme first
    config = function()
      vim.cmd("colorscheme afterglow")
      vim.api.nvim_set_hl(0, "NonText", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "SpellBad", { underline = true, fg = "#ff0000" })
    end,
  },
}
