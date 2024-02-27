local keymap = vim.keymap
local opts = { noremap = true, silent = true }



keymap.set('n', '<c-k>', ':wincmd k<CR>', { noremap = true, silent = true })
keymap.set('n', '<c-j>', ':wincmd j<CR>', { noremap = true, silent = true })
keymap.set('n', '<c-h>', ':wincmd h<CR>', { noremap = true, silent = true })
keymap.set('n', '<c-l>', ':wincmd l<CR>', { noremap = true, silent = true })

-- split windows
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--tabs 
keymap.set("n", "tn", ":tabnew<CR>", opts)
keymap.set("n", "tc", ":tabclose<CR>", opts)
keymap.set("n", "tl", ":tabnext<CR>", opts)
keymap.set("n", "th", ":tabprevious<CR>", opts)

-- move windows 
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sj", "<C-w>j", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sl", "<C-w>l", opts)


--resize windows
keymap.set("n", "<C-S-h>", "<C-w><", opts)
keymap.set("n", "<C-S-l>", "<C-w>>", opts)
keymap.set("n", "<C-S-j>", "<C-w>+", opts)
keymap.set("n", "<C-S-k>", "<C-w>-", opts)

-- save file and quit
keymap.set("n", "<leader>w", ":w!<CR>", opts)
keymap.set("n", "<leader>W", ":wa!<CR>", opts)
keymap.set("n", "<leader>q", ":q!<CR>", opts)
keymap.set("n", "<leader>Q", ":qa!<CR>", opts)
keymap.set("n", "<leader>E", ":qa<CR>", opts)

keymap.set("n", "<leader>ul", ":Lazy<CR>",{desc = "open lazy"} , opts)
keymap.set("n", "<leader>ue", ":Mason<CR>",{desc = "open Mason"} , opts)

