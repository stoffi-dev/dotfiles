call plug#begin('~/.vim/plugged')
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'joshdick/onedark.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" Lua requires
lua require("init")

colorscheme onedark

" General Settings
set nocompatible
syntax on
set laststatus=2
set tabstop=4 softtabstop=4
set shiftwidth=4
highlight Cursor guifg=green
set guicursor=n-c-v:block-Cursor\lCursor
set expandtab
set smartindent
set relativenumber
set nu
set nowrap
set noswapfile
set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set splitbelow
set splitright

" Clipboard copy settings
set clipboard=unnamedplus

" Give more space for displaying messages.
set cmdheight=1

"Adjust updatetime for quicker response
set updatetime=50

" Dont pass messages to |ins-completion-menu|
set shortmess+=c

" File type specifics
autocmd FileType python setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab

" Key remappings
let mapleader = " "
nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au filetype go inoremap <leader>a <C-x><C-o>


" Behave like other capitals
nnoremap Y y$

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>=

" Telescope mappings
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
