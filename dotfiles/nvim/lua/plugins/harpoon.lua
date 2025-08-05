return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
        local harpoon = require("harpoon")
        harpoon.setup({
            global_settings = {
                save_on_toggle = true,
                save_on_change = true,
                enter_on_sendcmd = false,
            },
        })

        local keymap = vim.keymap.set
        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers")
                .new({}, {
                    prompt_title = "Harpoon",
                    finder = require("telescope.finders").new_table({
                        results = file_paths,
                    }),
                    previewer = conf.file_previewer({}),
                    sorter = conf.generic_sorter({}),
                })
                :find()
        end

        keymap("n", "<leader>a", function()
            harpoon:list():add()
        end, {})
        keymap("n", "<C-e>", function()
            toggle_telescope(harpoon:list())
        end, {})
    end,
}
