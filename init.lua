
-- Basic Settings from your init.vim
-- Only keeping non-default options or those that differ from Neovim defaults
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.cindent = false
vim.opt.expandtab = true
vim.opt.colorcolumn = "80"
vim.opt.spell = true
vim.opt.formatoptions = "tcrqj"
vim.opt.textwidth = 79
vim.opt.termguicolors = true

vim.api.nvim_create_user_command('ToggleCmp',
    function()               
       vim.b.cmp_enabled = not vim.b.cmp_enabled
       require('cmp').setup.buffer { enabled = vim.b.cmp_enabled }
    end,
    {})

-- Indentation configuration - simplified for Neovim
vim.cmd('filetype plugin indent on')
vim.api.nvim_create_autocmd("FileType", {
  pattern = "text",
  callback = function()
    vim.opt_local.textwidth = 80
  end
})

require('config.lazy') 

