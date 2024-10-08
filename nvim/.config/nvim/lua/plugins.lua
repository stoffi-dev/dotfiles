return {

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.x',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  }

  use {"hrsh7th/nvim-cmp",
    dependencies = {
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
  use ('tpope/vim-fugitive'),
  
  use  {
      "loctvl842/monokai-pro.nvim", config = function()
        require("monokai-pro").setup()
      end
  }

  use 'marko-cerovac/material.nvim'
  use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}
}
