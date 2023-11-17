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
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', 'C-p', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
