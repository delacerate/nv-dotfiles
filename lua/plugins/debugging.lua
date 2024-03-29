return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"leoluz/nvim-dap-go",
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		require("dapui").setup()
		require("dap-go").setup()

		local dap, dapui = require("dap"), require("dapui")

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
    vim.keymap.set("n", "<leader>dt", ":DapToggleBreakpoint<CR>", {desc="Toggle debugger breakpoint"})
		vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>", {desc="Dap Continue"})
		vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>", {desc="Dap Terminate"})
		vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>", {desc="Dap Step Over"})
	end,
}
