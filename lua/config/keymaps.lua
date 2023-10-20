local keymap = vim.keymap

--directory
keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>", { noremap = true, silent = true})
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true})


