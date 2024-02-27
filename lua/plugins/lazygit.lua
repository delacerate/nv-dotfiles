return {
  "kdheepak/lazygit.nvim",
  keys = {
    { "n", "<leader>dg", ":LazyGit<CR>", { noremap = true, silent = true }
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
