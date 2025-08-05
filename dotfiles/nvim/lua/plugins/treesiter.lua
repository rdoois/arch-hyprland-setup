return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"dockerfile",
				"go",
				"java",
				"javascript",
				"lua",
				"python",
				"typescript",
				"query",
				"vim",
				"vimdoc",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
			},
		})
	end,
}
