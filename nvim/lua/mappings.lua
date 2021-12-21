local map = vim.api.nvim_set_keymap
default_options = { noremap = true }

-- map the leader key
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", default_options)
vim.g.mapleader = " "
