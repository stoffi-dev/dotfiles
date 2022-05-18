call plug#begin('~/.vim/plugged')
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'joshdick/onedark.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'marko-cerovac/material.nvim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

" Lua requires
lua require("init")

"lua << EOF
"vim.lsp.set_log_level("debug")
"EOF

"colorscheme onedark
colorscheme material

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

" LSP config
source ~/.config/nvim/lua/lsp/lsp-config.vim
source ~/.config/nvim/syntax/apex.vim
au BufRead,BufNewFile *.cls set filetype=apex

" File type specifics
autocmd FileType python setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab

" Vim-Go configurations
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

" Markdown Preview Settings
let g:mkdp_auto_close = 0
"let g:mkdp_browser = 'firefox'
let g:mkdp_echo_preview_url = 1

function! g:Open_browser(url)
  exec "Start! firefox --new-window " . a:url
  " Alternatively, without vim-dispatch
  "silent exec "firefox --new-window " . a:url . " &"
endfunction
let g:mkdp_browserfunc = 'g:Open_browser'

nnoremap <C-m> :MarkdownPreview<CR>
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
nnoremap <leader>j :m .+1<CR>==

" Telescope mappings
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
