-- vim-plug plugins
local Plug = vim.fn['plug#']
vim.call('plug#begin')

Plug('rebelot/kanagawa.nvim')
Plug('sheerun/vim-polyglot')
Plug('junegunn/fzf', {
  ['do'] = function()
    vim.call('fzf#install')
  end
})
Plug('junegunn/fzf.vim')

vim.call('plug#end')

-- post installation setups
require('kanagawa').setup({
  typeStyle = { italic = true },
  transparent = true,
  theme = 'wave',
})

-- settings
vim.cmd [[ colorscheme kanagawa-dragon ]]

--keybinds
vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>pf', vim.cmd.Files)
