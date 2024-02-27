return {
  {
    "j-hui/fidget.nvim", tag = "legacy", lazy = false,
  },
  {
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
    cmd = {"LspInfo", "LspInstall", "LspUninstall", "Mason"},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
      require("lspconfig").eslint.setup {
        on_attach = function()
        for i, server in ipairs(vim.lsp.buf_get_clients(0)) do
          if server.name == "tsserver" then
            server.resolved_capabilities.document_formatting = false
          end
        end
      end 
      }
      lspconfig.eslint.setup({
      capabilities = capabilities,
      })
      lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
		end,
	},
}
