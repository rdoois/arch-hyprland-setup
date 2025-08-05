return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			enable_git_status = true,
			enable_diagnostics = true,
			default_component_configs = {
				indent = {
					with_markers = true,
				},
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
					visible = true,
					hide_by_name = {
						".DS_Store",
						"thumbs.db",
						"node_modules",
						".git",
					},
				},
				follow_current_file = {
					enabled = true,
				},
			},
			window = {
				width = 30,
				mappings = {
					["<space>"] = "toggle_node",
					["<cr>"] = "open",
					["o"] = "open",
				},
			},
		})

		local opts = { silent = true }
		vim.keymap.set("n", "<leader>pv", ":Neotree toggle filesystem reveal left<CR>", opts)
	end,
}
