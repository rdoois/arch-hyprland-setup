return {
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
			ensure_installed = {
				"gopls",
				"jdtls",
				"lua_ls",
				"ts_ls",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = {
			"fatih/vim-go",
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			local telescope = require("telescope.builtin")
			local keymap = vim.keymap.set

			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.jdtls.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

			keymap("n", "K", vim.lsp.buf.hover, {})
			keymap("n", "gd", vim.lsp.buf.definition, {})
			keymap("n", "gr", telescope.lsp_references, {})
			keymap("n", "gi", telescope.lsp_implementations, {})
			keymap("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
