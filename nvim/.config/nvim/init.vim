call plug#begin('~/.vim/plugged')
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'joshdick/onedark.vim'
call plug#end()
lua require("init")

syntax on
colorscheme onedark
