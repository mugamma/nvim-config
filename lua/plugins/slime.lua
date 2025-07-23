return {
  -- vim-slime for TMUX integration
  {
    'jpalardy/vim-slime',
    config = function()
      vim.g.slime_target = "tmux"
      vim.g.slime_default_config = {socket_name = "default", target_pane = "{last}"}
      vim.g.slime_bracketed_paste = 1
      vim.g.slime_cell_delimiter = "^```"

      vim.api.nvim_set_keymap('n', '<c-c><c-c>', '<Plug>SlimeSendCell',
          {silent = true, desc = "Send cell to TMUX"})
      vim.api.nvim_set_keymap('n', '<c-c>v', '<Plug>SlimeConfig',
          {silent = true, desc = "Configure Slime"})
      vim.api.nvim_set_keymap('x', '<c-c><c-c>', '<Plug>SlimeRegionSend',
          {silent = true, desc = "Send selection to TMUX"})
    end,
  },
}
