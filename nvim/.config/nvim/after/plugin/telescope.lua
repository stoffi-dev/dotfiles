--require('telescope').setup({
--  defaults = {
--    layout_strategy = 'vertical',
--    layout_config = {
--      vertical = { width = 0.75 }
--      -- other layout configuration here
--    },
--    -- other defaults configuration here
--  },
--  -- other configuration values here })

local builtin = require('telescope.builtin')
local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
            }
        }
    }
})

--vim.keymap.set('i', 'C-k', actions.move_selection_previous)
--vim.keymap.set('i', 'C-j', actions.move_selection_next)

vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Fuzzy find files in cwd"})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {desc = "Find string in cwd"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Show buffers"})
