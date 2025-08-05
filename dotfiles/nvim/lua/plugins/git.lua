return {
    {
        "tpope/vim-fugitive",
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            local keymap = vim.keymap.set
            local gitsigns = require("gitsigns")

            gitsigns.setup()

            keymap("n", "<leader>gp", gitsigns.preview_hunk, {})
            keymap("n", "<leader>gb", gitsigns.toggle_current_line_blame, {})
        end,
    }
}
