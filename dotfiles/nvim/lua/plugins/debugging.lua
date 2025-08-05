return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"leoluz/nvim-dap-go",
	},
	config = function()
		local keymap = vim.keymap.set
		local dap = require("dap")
		local dapui = require("dapui")
		local dapgo = require("dap-go")

		dapui.setup()
		dapgo.setup()

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

		keymap("n", "<F5>", dap.continue, {})
		keymap("n", "<F10>", dap.step_over, {})
		keymap("n", "<F11>", dap.step_into, {})
		keymap("n", "<F12>", dap.step_out, {})
		keymap("n", "<F8>", dap.toggle_breakpoint, {})
	end,
}
