return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "cmake",
        "comment",
        "cpp",
        "css",
        "dockerfile",
        "go",
        "gomod",
        "graphql",
        "gitignore",
        "http",
        "html",
        "javascript",
        "json",
        "jsonc",
        "lua",
        "python",
        "regex",
        "rust",
        "scss",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },
      config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
          auto_install = true,
          highlight = { enable = true },
          indent = { enable = true },
        })
      end,
    },
  },
}
