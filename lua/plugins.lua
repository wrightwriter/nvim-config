-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

packer = require 'packer'
packer.init {
}

local use = packer.use;

packer.reset()

packer.startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'unblevable/quick-scope'

  use {
  'phaazon/hop.nvim',
  branch = 'v2', -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    -- require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    require'hop'.setup { keys = 'equdj' }
  end
	}
  use 'kqito/vim-easy-replace'


  use{
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
	require("nvim-surround").setup({
	    -- Configuration here, or leave empty to use defaults
	})
    end
  }


end)

-- vim.api.nvim_set_keymap('', '<S-f>', "<cmd>lua require'hop'.hint_char1({  current_line_only = false })<cr>", {})


-- vim.api.nvim_set_keymap('', '<S-f>', "<cmd>lua require'hop'.hint_patterns({  current_line_only = false })<cr>", {})
vim.api.nvim_set_keymap('', '<C-f>', "<cmd>lua require'hop'.hint_patterns({  current_line_only = false })<cr>", {})

require'hop'.setup { keys = 'qweruhjkl' }


