local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>ce', vim.diagnostic.open_float, { desc = 'Show diagnosti[C] [E]rror messages' })
vim.keymap.set('n', '<leader>cq', vim.diagnostic.setloclist, { desc = 'Open diagnosti[C] [Q]uickfix list' })

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

-- move windows
-- keymap.set('n', 'ah', '<C-w>h', opts)
-- keymap.set('n', 'aj', '<C-w>j', opts)
-- keymap.set('n', 'ak', '<C-w>k', opts)
-- keymap.set('n', 'al', '<C-w>l', opts)

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
keymap.set('n', '<leader>wq', ':wq!<CR>', { desc = 'save and quit' }, opts)
keymap.set('n', '<leader>we', ':q!<CR>', { desc = 'quit' }, opts)
keymap.set('n', '<leader>wa', ':qa!<CR>', { desc = 'quit all' }, opts)
keymap.set('n', '<leader>wW', ':wa!<CR>', { desc = 'save all and quit' }, opts)
-- keymap.set('n', '<C-w>', ':w!<CR>', { desc = 'save' }, opts)
-- keymap.set('n', '<C-W>', ':wa!<CR>', opts)
-- keymap.set('n', '<C-q>', ':q!<CR>', opts)
-- keymap.set('n', '<C-Q>', ':qa!<CR>', opts)
-- keymap.set('n', '<C-E>', ':qa<CR>', opts)

keymap.set('n', '<leader>ul', ':Lazy<CR>', { desc = 'open lazy' }, opts)
keymap.set('n', '<leader>ue', ':Mason<CR>', { desc = 'open Mason' }, opts)

-- Replace Current Word {{{
keymap.set('n', '<Leader>cw', '*Ncgn', opts, { desc = 'Replace current word' })
--}}}

-- Run Eslint with Leader lf {{{
vim.keymap.set('n', '<leader>lf', function()
  vim.lsp.buf.format {
    filter = function(client)
      return client.name == 'null-ls'
    end,
    bufnr = bufnr,
  }
end, opts, { desc = 'Run Eslint' })
-- }}}

-- Diagnostic Window on CursorHold {{{
vim.api.nvim_create_autocmd('CursorHold', {
  buffer = bufnr,
  callback = function()
    local opt = {
      focusable = false,
      close_events = { 'BufLeave', 'CursorMoved', 'InsertEnter', 'FocusLost' },
      border = 'rounded',
      source = 'always',
      prefix = '',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opt)
  end,
  })
--}}}

-- LSP Commands {{{
vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', { desc = 'Open [L]SP diagnostics' })
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', { desc = 'Go to next [D]iagnostic message' })

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local op = { buffer = event.buf }

    -- these will be buffer-local keybindings
    -- because they only work if you have an active language server

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', op, { desc = 'Show [K]ind of symbol under cursor' })
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', op, { desc = 'Go to [D]efinition' })
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', op, { desc = 'Go to [D]eclaration' })
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', op, { desc = 'Go to [I]mplementation' })
    vim.keymap.set('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<cr>', op, { desc = 'Go to [T]ype definition' })
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', op, { desc = 'Show [R]eferences' })
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', op, { desc = 'Show [S]ignature help' })
    vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', op, { desc = '[R]ename' })
    vim.keymap.set({ 'n', 'x' }, '<leader>fm', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', op, { desc = 'Format [M]arkup' })
    vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', op, { desc = '[C]ode action' })
  end,
})
--}}}

-- Fix Treesitter Highlighting {{{
vim.keymap.set('n', '<leader>ts', ':write | edit | TSBufEnable highlight<CR>', opts, { desc = 'Fix Treesitter Highlighting' })
-- }}}

-- Trouble Commands {{{
-- Lua
vim.keymap.set('n', '<leader>xx', function()
  require('trouble').toggle()
end, opts, { desc = 'Toggle [T]rouble' })
vim.keymap.set('n', '<leader>xw', function()
  require('trouble').toggle 'workspace_diagnostics'
end, opts, { desc = 'Toggle [W]orkspace diagnostics' })
vim.keymap.set('n', '<leader>xd', function()
  require('trouble').toggle 'document_diagnostics'
end, opts, { desc = 'Toggle [D]ocument diagnostics' })
vim.keymap.set('n', '<leader>xq', function()
  require('trouble').toggle 'quickfix'
end, opts, { desc = 'Toggle [Q]uickfix' })
vim.keymap.set('n', '<leader>xl', function()
  require('trouble').toggle 'loclist'
end, opts, { desc = 'Toggle [L]oclist' })
vim.keymap.set('n', 'gR', function()
  require('trouble').toggle 'lsp_references'
end, opts, { desc = 'Toggle [R]eferences' })
