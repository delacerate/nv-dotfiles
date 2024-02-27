return {
	"rebelot/kanagawa.nvim",
	lazy = false,
  priority = 9999,
  config = function()
		require("kanagawa").setup({
			theme = "dark",
			options = {
				italic_comments = true,
				italic_keywords = true,
				italic_functions = true,
				italic_variables = true,
			},
  vim.cmd("colorscheme kanagawa-wave")
		})
	end,
}
