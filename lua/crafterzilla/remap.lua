vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>n", vim.cmd.NERDTreeToggle)
vim.api.nvim_set_keymap('i', '<C-H>', '<C-W>', {noremap = true})
-- vim.keymap.set("i", "<M-BS>", "<C-w>")
-- vim.keymap.set("i", "<C-BS>", "<C-w>")

vim.api.nvim_set_keymap('i', '<C-C>', '<Esc>', {noremap = true})
