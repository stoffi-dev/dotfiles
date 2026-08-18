return {
    {
        'nvim-treesitter/nvim-treesitter', 
      version = false,
      build = ":TSUpdate",
      lazy = vim.fn.argc(-1) == 0
  },
  'nvim-treesitter/playground'
}
