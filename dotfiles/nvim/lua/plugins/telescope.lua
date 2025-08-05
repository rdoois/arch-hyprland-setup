return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		config = function()
			local builtin = require("telescope.builtin")
			local keymap = vim.keymap.set

			keymap("n", "<C-p>", builtin.git_files, {})
			keymap("n", "<leader>pf", builtin.find_files, {})
			keymap("n", "<leader>ps", builtin.live_grep, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			local telescope = require("telescope")
			local telescope_themes = require("telescope.themes")

			telescope.setup({
				defaults = {
					file_ignore_patterns = { ".git/", "node_modules/", "%.lock" },
				},
				pickers = {
					find_files = {
						hidden = true,
					},
				},
				extensions = {
					["ui-select"] = {
						telescope_themes.get_dropdown({}),
					},
				},
			})

			telescope.load_extension("ui-select")
		end,
	},
}
