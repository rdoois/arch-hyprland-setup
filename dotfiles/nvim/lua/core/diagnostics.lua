local icons = {
	breakpoint = "",
	error = "",
	hint = "󰌶",
	info = "",
	prefix = "", -- 
	warn = "",
}

vim.diagnostic.config({
	virtual_text = {
		prefix = icons.prefix,
		spaces = 4,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = icons.error,
			[vim.diagnostic.severity.WARN] = icons.warn,
			[vim.diagnostic.severity.INFO] = icons.info,
			[vim.diagnostic.severity.HINT] = icons.hint,
		},
	},
})

local dap_icons = {
	breakpoint = {
		text = icons.breakpoint,
		texthl = "DiagnosticSignError",
	},
}

vim.fn.sign_define("DapBreakpoint", dap_icons.breakpoint)
