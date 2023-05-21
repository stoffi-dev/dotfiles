-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
  use ('nvim-treesitter/playground')
  use ('theprimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')
  use 'monsonjeremy/onedark.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'marko-cerovac/material.nvim'
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = false}
  }
  require('nvim-web-devicons').setup {
      default = true;
  }
  require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'material',
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {},
        always_divide_middle = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
                {'branch'},
                {'diff',
                    colored = true,
                    diff_color = {
                        added = nil,
                        modified = nil,
                        removed = nil,
                    },
                    symbols = {
                        added = '+',
                        modified = '~',
                        removed = '-'
                    }
                },
                {'diagnostics', sources={'nvim_lsp', 'coc'}}
            },
        lualine_c = {
            {
                'filename',
                file_status = true,
                path = 1,
                shorting_target = 40
            }
        },
        lualine_x = {'encoding', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    }
    
  }
end)
