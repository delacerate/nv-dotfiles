local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>ce', vim.diagnostic.open_float, { desc = 'Show diagnosti[C] [E]rror messages' })
vim.keymap.set('n', '<leader>cq', vim.diagnostic.setloclist, { desc = 'Open diagnosti[C] [Q]uickfix list' })

-- move a blocks of text up/down with K/J in visual mode
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })

--notes
vim.keymap.set('n', '<leader>no', ':ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>')

--move lines
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- split windows
keymap.set('n', 'ss', ':split<Return>', opts)
keymap.set('n', 'sv', ':vsplit<Return>', opts)

--tabs
keymap.set('n', 'tn', ':tabnew<CR>', opts)
keymap.set('n', 'tc', ':tabclose<CR>', opts)
keymap.set('n', 'tl', ':tabnext<CR>', opts)
keymap.set('n', 'th', ':tabprevious<CR>', opts)

-- Center the screen after scrolling up/down with Ctrl-u/d
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')

-- move windows
-- keymap.set('n', 'ah', '<C-w>h', opts)
-- keymap.set('n', 'aj', '<C-w>j', opts)
-- keymap.set('n', 'ak', '<C-w>k', opts)
-- keymap.set('n', 'al', '<C-w>l', opts)

-- checkbox
vim.keymap.set('n', '<leader>ny', [[:s/\[\s\]/[x]/<cr>]], { silent = true })
vim.keymap.set('n', '<leader>nu', [[:s/\[x\]/[x]/<cr>]], { silent = true })

-- windows
vim.keymap.set('n', '<leader><left>', ':vertical resize +20<cr>')
vim.keymap.set('n', '<leader><right>', ':vertical resize -20<cr>')
vim.keymap.set('n', '<leader><up>', ':resize +10<cr>')
vim.keymap.set('n', '<leader><down>', ':resize -10<cr>')

--resize windows
keymap.set('n', '<C-S-h>', '<C-w><', opts)
keymap.set('n', '<C-S-l>', '<C-w>>', opts)
keymap.set('n', '<C-S-j>', '<C-w>+', opts)
keymap.set('n', '<C-S-k>', '<C-w>-', opts)

--lazygit
keymap.set('n', '<leader>lg', ':LazyGit<CR>', { desc = 'open lazygit' }, opts)
keymap.set('n', '<leader>lc', '<cmd>LazyGitConfig<CR>', { desc = 'Lazygit config' }, opts)
keymap.set('n', '<leader>le', '<cmd>LazyGitCurrentFile<CR>', { desc = 'Lazygit current file' }, opts)
keymap.set('n', '<leader>lf', '<cmd>LazyGitFilter<CR>', { desc = 'Lazygit Filter' }, opts)
keymap.set('n', '<leader>li', '<cmd>LazyGitFilterCurrentFile<CR>', { desc = 'Lazygit filter current file' }, opts)

-- save file and quit
keymap.set('n', '<leader>ww', ':w!<CR>', { desc = 'save' }, opts)
keymap.set('n', '<leader>wa', ':wq!<CR>', { desc = 'save and quit' }, opts)
keymap.set('n', '<leader>we', ':q!<CR>', { desc = 'quit' }, opts)
keymap.set('n', '<leader>wq', ':qa!<CR>', { desc = 'quit all' }, opts)
keymap.set('n', '<leader>wW', ':wa!<CR>', { desc = 'save all and quit' }, opts)
-- keymap.set('n', '<C-w>', ':w!<CR>', { desc = 'save' }, opts)
-- keymap.set('n', '<C-W>', ':wa!<CR>', opts)
-- keymap.set('n', '<C-q>', ':q!<CR>', opts)
-- keymap.set('n', '<C-Q>', ':qa!<CR>', opts)
-- keymap.set('n', '<C-E>', ':qa<CR>', opts)

keymap.set('n', '<leader>ul', ':Lazy<CR>', { desc = 'open lazy' }, opts)
keymap.set('n', '<leader>ue', ':Mason<CR>', { desc = 'open Mason' }, opts)
