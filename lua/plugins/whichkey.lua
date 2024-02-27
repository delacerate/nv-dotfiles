return{
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    plugins = {
      marks = true, -- shows a list of your marks on ' and `
      registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
      spelling = {
        enabled = false, -- enabling this will show WhichKey for 'z='
        suggestions = 20, -- how many suggestions should be shown in the list?
      },
      presets = {
        operators = true, -- adds help for operators like d, y, ...
        motions = true, -- adds help for motions
        text_objects = true, -- help for text objects triggered after entering an operator
        windows = true, -- default bindings on <c-w>
        nav = true, -- misc bindings to work with windows
        z = true, -- bindings for folds, spelling and others
        g = true, -- bindings for prefixed mappings (e.g. `gq` for formatting)
      }, 
      },
    operators = {gc = "Comments"},
    key_labels = {
      ["<space>"] = "SPC",
      ["<cr>"] = "RET",
      ["<tab>"] = "TAB",
    },
    icons = {
      breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
      separator = "➜", -- symbol used between a key and it's label
      group = "+", -- symbol prepended to a group
    },
    window = {
      border = "none", -- none, single, double, shadow
      position = "bottom", -- bottom, top
      margin = {1, 0, 1, 0}, -- extra window margin [top, right, bottom, left]
      padding = {2, 2, 2, 2}, -- extra window padding [top, right, bottom, left]
    },
    layout = {
      height = {min = 4, max = 25}, -- min and max height of the columns
      width = {min = 20, max = 50}, -- min and max width of the columns
      spacing = 3, -- spacing between columns
    },
    hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "<Plug>", "<plug>"}, -- hide mapping boilerplate
    show_help = true, -- show help message on the command line when the popup is visible
    show_key = true, -- shows the pressed keys while the popup is visible
    triggers = "auto", -- automatically setup triggers
    triggers_blacklist = {
      -- list of mode / prefixes that should never be hooked by WhichKey
      -- this is mostly relevant for key maps that start with a native binding
      -- most people should not need to change this
      i = {"j", "k"},
      v = {"j", "k"},
    },  
    triggers_nowait = {
    -- marks
    "`",
    "'",
    "g`",
    "g'",
    -- registers
    '"',
    "<c-r>",
    -- spelling
    "z=",
  },
  -- disable the WhichKey popup for certain buf types and file types.
  -- Disabled by default for Telescope
  disable = {
    buftypes = {},
    filetypes = {},
  },
}
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }

