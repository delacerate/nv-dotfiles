local M = {}

M.dap = {
  plugin = true,
  n = {
    ['<leader>db'] = {
      '<cmd> DapToggleBreakpoint <CR>',
      desc = 'Debug: Toggle Breakpoint',
    },
    ['<leader>du'] = {
      function()
        local widgets = require 'dap.ui.widgets'
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.toggle()
      end,
      desc = 'Debug: Toggle UI',
    },
  },
}
