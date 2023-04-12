vim.g.mapleader = " " 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Behave like other capitals
vim.keymap.set("n", "Y", "yg$")

-- Keep it centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Undo break points
--vim.keymap.set(", ,<c-g>u
--vim.keymap.set(". .<c-g>u
--vim.keymap.set("! !<c-g>u
--vim.keymap.set("? ?<c-g>u

-- Jumplist mutations
--vim.keymap.set("<expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
--vim.keymap.set("<expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

-- Moving text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
