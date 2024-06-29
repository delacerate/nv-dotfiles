return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'kanagawa',
        component_separators = { left = '│', right = '│' },
        section_separators = { left = '', right = '' },
        icons_enabled = true,
        disabled_filetypes = {},
        always_divide_middle = true,

        --component_separators = { left = "", right = "" },
        --section_separators = { left = "", right = "" },
        -- component_separators = { left = "│", right = "│" },
        -- section_separators = { left = " ", right = " " },
        -- component_separators = { left = " ", right = " " },
        -- section_separators = { left = "", right = "" },
        --component_separators = { left = " ", right = " " },
        --section_separators = { left = " ", right = " " },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = {
          'branch',
          {
            'diff',
            source = diff,
          },
        },
        lualine_c = {
          'filename',
          {
            'diagnostics',
            sources = { 'nvim_diagnostic' },
            symbols = { error = '🆇 ', warn = '⚠️ ', info = 'ℹ️ ', hint = ' ' },
          },
        },
        lualine_x = {
          'encoding',
          {
            'fileformat',
            symbols = {
              unix = 'unix',
              dos = 'win',
              mac = 'mac',
            },
          },
          'filetype',
        },
        lualine_y = {
          'location',
        },
        lualine_z = {
          {
            trailing_space,
            color = 'WarningMsg',
          },
          {
            mixed_indent,
            color = 'WarningMsg',
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { 'quickfix', 'fugitive', 'nvim-tree' },
    }
  end,
}
