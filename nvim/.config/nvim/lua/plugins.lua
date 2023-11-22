-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { 'williamboman/mason.nvim',
    requires = {"williamboman/mason-lspconfig.nvim",
    }
  }

  use {'neovim/nvim-lspconfig',
      requires = {"hrsh7th/cmp-nvim-lsp"}
  }

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {"hrsh7th/nvim-cmp",
    requires = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
    }
}
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
  use ('nvim-treesitter/playground')
  use ('theprimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')
  use 'navarasu/onedark.nvim'
      require('onedark').setup {
          style = 'darker'
      }
  
  use  {
      "loctvl842/monokai-pro.nvim", config = function()
        require("monokai-pro").setup()
      end
    }
  use 'marko-cerovac/material.nvim'
  use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = false}
  } require('nvim-web-devicons').setup {
      default = true;
  } require('lualine').setup {
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
