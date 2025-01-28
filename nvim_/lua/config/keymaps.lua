-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>cp", "<cmd>Copilot enable<CR>", { desc = "copilot enable" }, { silent = true })
vim.keymap.set("n", "<leader>cx", "<cmd>Copilot disable<CR>", { desc = "copilot disable" }, { silent = true })
vim.keymap.set("n", "<leader>cs", "<cmd>Copilot status<CR>", { desc = "copilot status" }, { silent = true })
