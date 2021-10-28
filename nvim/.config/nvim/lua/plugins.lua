local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'monsonjeremy/onedark.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  require('lualine').setup {
    options = {
      theme = 'material'
      -- ... your lualine config
    }
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
end)
