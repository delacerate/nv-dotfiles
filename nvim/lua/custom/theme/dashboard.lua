return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper', --  theme is doom and hyper default is hyper
      disable_move = false, --  default is false disable move keymap for hyper
      shortcut_type = 'number', --  shorcut type "" or "number"
      change_to_vcs_root = true, -- default is false,for open file in hyper mru. it will change to the root of vcs
      config = { --  config used for theme
        header = {
          [[                                                ]],
          [[                                                ]],
          [[      ___      __                      __       ]],
          [[     / _ \___ / /__ ________ _______ _/ /____   ]],
          [[    / // / -_) / _ `/ __/ -_) __/ _ `/ __/ -_)  ]],
          [[   /____/\__/_/\_,_/\__/\__/_/  \_,_/\__/\__/   ]],
          [[                                                ]],
          [[                                                ]],
          [[                                                ]],
          [[]],
          [[]],
        },
        packages = { enable = true },
        project = { enable = true, limit = 3 },
        week_header = {
          enable = false,
        },
        shortcut = {
          {
            icon = '󰊳 ',
            desc = 'Update Lazy',
            group = '@property',
            action = "require('lazy').update()",
            key = 'l',
          },
          {
            icon = '󰊳 ',
            desc = 'Update Mason',
            group = 'number',
            action = 'MasonUpdateAll',
            key = 'm',
          },
          {
            icon = ' ',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
          {
            icon = '󰝰 ',
            desc = 'Neo Tree',
            group = '@type',
            action = 'Neotree toggle',
            key = 'n',
          },
        },
      },
      hide = {
        statusline = false, -- hide statusline default is true
        tabline = true, -- hide the tabline
        winbar = true, -- hide winbar
      },
      preview = {
        -- command,       -- preview command
        -- file_path,     -- preview file path
        -- file_height,   -- preview file height
        -- file_width,    -- preview file width
      },
    }
  end,
}
