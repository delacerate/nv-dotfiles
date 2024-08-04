-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>qw", ":w!<CR>", { desc = "save" }, opts)
keymap.set("n", "<leader>qa", ":wq!<CR>", { desc = "save and quit" }, opts)
keymap.set("n", "<leader>qe", ":q!<CR>", { desc = "quit" }, opts)
keymap.set("n", "<leader>qs", ":qa!<CR>", { desc = "quit all" }, opts)
