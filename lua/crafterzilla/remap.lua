vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ranger)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- vim.keymap.set("n", "<leader>n", vim.cmd.NERDTreeToggle)
-- vim.keymap.set("n", "<leader>n", vim.cmd.RangerTab)
vim.api.nvim_set_keymap('i', '<C-H>', '<C-W>', {noremap = true})
-- vim.keymap.set("i", "<M-BS>", "<C-w>")
-- vim.keymap.set("i", "<C-BS>", "<C-w>")

vim.api.nvim_set_keymap('i', '<C-C>', '<Esc>', {noremap = true})

vim.keymap.set('n', '<leader>r', ':RunCode<CR>a', { noremap = true, silent = false })

vim.keymap.set("n", '<leader>dk', function() require('dap').continue() end)
vim.keymap.set("n", '<leader>dl', function() require('dap').run_last() end)
vim.keymap.set("n", '<leader>b', function() require('dap').toggle_breakpoint() end)


vim.keymap.set("n", "<leader>m", ":!make")
