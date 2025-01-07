--
-- return {
--   'epwalsh/obsidian.nvim',
--   version = '*', -- recommended, use latest release instead of latest commit
--   lazy = true,
--   ft = 'markdown',
--   -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
--   -- event = {
--   --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
--   --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
--   --   "BufReadPre path/to/my-vault/**.md",
--   --   "BufNewFile path/to/my-vault/**.md",
--   -- },
--   dependencies = {
--     -- Required.
--     'nvim-lua/plenary.nvim',
--
--     -- see below for full list of optional dependencies 👇
--   },
--   opts = {
--     workspaces = {
--       {
--         name = 'darman-notebook',
--         path = '~/darman-notebook/',
--       },
--     },
--     templates = {
--       subdir = 'templates',
--       date_format = '%Y-%m-%d',
--       time_format = '%H:%M:%S',
--     },
--
--     -- see below for full list of options 👇
--   },
-- }

return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('obsidian').setup {
      workspaces = {
        {
          name = 'ObsidianVault',
          path = '/home/delacerat3/darman-notebook/',
        },
      },
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
      new_notes_location = 'notes_subdir',
      note_id_func = function(title)
        return title
      end,
      note_frontmatter_func = function(note)
        local out = { id = note.id, aliases = note.aliases, tags = note.tags }

        if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
          for k, v in pairs(note.metadata) do
            out[k] = v
          end
        end

        return out
      end,
      mappings = {},

      templates = {
        subdir = 'templates',
        date_format = '%Y-%m-%d',
        time_format = '%H:%M',
        tags = '',
        substitutions = {
          yesterday = function()
            return os.date('%Y-%m-%d', os.time() - 86400)
          end,
          tomorrow = function()
            return os.date('%Y-%m-%d', os.time() + 86400)
          end,
        },
      },

      ui = {
        enable = true,
      },
    }
  end,
}
