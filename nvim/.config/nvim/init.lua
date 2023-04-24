require('keymappings')
require('plugins')
require('set')

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.apex = {
  install_info = {
    url = "~/.config/nvim/after/parsers/apex", -- local path or git repo
    files = {"src/parser.c"},
--    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = true, -- if folder contains pre-generated src/parser.c
  }
}

parser_config.soql = {
  install_info = {
    url = "~/.config/nvim/after/parsers/soql", -- local path or git repo
    files = {"src/parser.c"},
    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = true, -- if folder contains pre-generated src/parser.c
  }
}

parser_config.sosl = {
  install_info = {
    url = "~/.config/nvim/after/parsers/sosl", -- local path or git repo
    files = {"src/parser.c"},
    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = true, -- if folder contains pre-generated src/parser.c
  }
}
